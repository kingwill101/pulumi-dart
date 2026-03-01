import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class K8sMernVotingAppStack extends pulumi.Stack {
  late final pulumi.Output<dynamic> kubeconfig;
  late final pulumi.Output<String> url;

  K8sMernVotingAppStack() {
    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(numberOfAvailabilityZones: 2.output()),
    );

    final cluster = eks.Cluster(
      'eks-cluster',
      args: eks.ClusterArgs(
        vpcId: vpc.vpcId,
        subnetIds: vpc.publicSubnetIds,
        authenticationMode: eks.AuthenticationMode.api.output(),
        desiredCapacity: 3.output(),
        minSize: 2.output(),
        maxSize: 4.output(),
        storageClasses: 'gp2'.output(),
      ),
    );

    final provider = k8sproviders.ProviderProvider(
      'k8s',
      args: k8sproviders.ProviderArgs(kubeconfig: cluster.kubeconfigJson),
    );

    final ns = k8score.NamespaceCoreV1(
      'voting',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final namespaceName = ns.metadata.apply((m) => m.name ?? 'voting');

    final dbLabels = <String, String>{'app': 'mongodb'};
    k8sapps.DeploymentAppsV1(
      'database',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: dbLabels).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: dbLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: dbLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'mongodb',
                  image: 'mongo:7',
                  ports: [k8score.ContainerPort(name: 'db', containerPort: 27017)],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final dbService = k8score.ServiceCoreV1(
      'database-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: dbLabels).output(),
        spec: k8score.ServiceSpec(
          type: 'ClusterIP',
          selector: dbLabels,
          ports: [k8score.ServicePort(port: 27017, targetPort: 27017)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final serverLabels = <String, String>{'app': 'server'};
    final serverService = k8score.ServiceCoreV1(
      'server-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: serverLabels).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: serverLabels,
          ports: [k8score.ServicePort(port: 5000, targetPort: 5000)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    k8sapps.DeploymentAppsV1(
      'server',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: serverLabels).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 2,
          selector: k8smeta.LabelSelector(matchLabels: serverLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: serverLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'server',
                  image: 'nginx:1.27-alpine',
                  ports: [k8score.ContainerPort(name: 'http', containerPort: 5000)],
                  env: [
                    k8score.EnvVar(name: 'MONGODB_ADDRESS', value: dbService.metadata.apply((_) => 'database-service')),
                    k8score.EnvVar(name: 'MONGODB_PORT', value: '27017'),
                    k8score.EnvVar(name: 'DATABASE_NAME', value: 'votes'),
                  ],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final clientLabels = <String, String>{'app': 'client'};
    final clientService = k8score.ServiceCoreV1(
      'client-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: clientLabels).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: clientLabels,
          ports: [k8score.ServicePort(port: 3000, targetPort: 3000)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    k8sapps.DeploymentAppsV1(
      'client',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(namespace: namespaceName, labels: clientLabels).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 2,
          selector: k8smeta.LabelSelector(matchLabels: clientLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: clientLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'client',
                  image: 'nginx:1.27-alpine',
                  ports: [k8score.ContainerPort(name: 'http', containerPort: 3000)],
                  env: [
                    k8score.EnvVar(
                      name: 'SERVER_HOSTNAME',
                      value: serverService.status.apply((s) {
                        final ingress = s?.loadBalancer?.ingress;
                        if (ingress == null || ingress.isEmpty) {
                          return '';
                        }
                        return ingress.first.hostname ?? ingress.first.ip ?? '';
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    kubeconfig = cluster.kubeconfig;
    url = clientService.status.apply((s) {
      final ingress = s?.loadBalancer?.ingress;
      if (ingress == null || ingress.isEmpty) {
        return '';
      }
      return ingress.first.hostname ?? ingress.first.ip ?? '';
    });
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('kubeConfig', kubeconfig),
      pulumi.OutputProperty('URL', url),
    ];
  }
}
