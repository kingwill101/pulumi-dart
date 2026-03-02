import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/index.dart' as eks_index;
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

    final cluster = eks.index.Cluster(
      'eks-cluster',
      args: eks.index.ClusterArgs(
        vpcId: vpc.vpcId,
        subnetIds: vpc.publicSubnetIds,
        authenticationMode: eks_index.AuthenticationMode.api.input(),
        desiredCapacity: 3.output(),
        minSize: 2.output(),
        maxSize: 4.output(),
        storageClasses: 'gp2'.input(),
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

    final namespaceName = ns.metadata.apply<String>((m) => m.name ?? 'voting');

    final dbLabels = <String, String>{'app': 'mongodb'};
    k8sapps.DeploymentAppsV1(
      'database',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: dbLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: dbLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: dbLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'mongodb'.input(),
                  image: 'mongo:7'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'db'.input(),
                      containerPort: 27017.input(),
                    ),
                  ].input(),
                ),
              ].input(),
            ).input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final dbService = k8score.ServiceCoreV1(
      'database-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: dbLabels.input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'ClusterIP'.input(),
          selector: dbLabels.input(),
          ports: [
            k8score.ServicePort(port: 27017.input(), targetPort: 27017.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final serverLabels = <String, String>{'app': 'server'};
    k8score.ServiceCoreV1(
      'server-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: serverLabels.input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.input(),
          selector: serverLabels.input(),
          ports: [
            k8score.ServicePort(port: 5000.input(), targetPort: 5000.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    k8sapps.DeploymentAppsV1(
      'server',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: serverLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 2.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: serverLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: serverLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'server'.input(),
                  image: 'nginx:1.27-alpine'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'http'.input(),
                      containerPort: 5000.input(),
                    ),
                  ].input(),
                  env: [
                    k8score.EnvVar(
                      name: 'MONGODB_ADDRESS'.input(),
                      value: dbService.metadata.apply(
                        (_) => 'database-service',
                      ),
                    ),
                    k8score.EnvVar(
                      name: 'MONGODB_PORT'.input(),
                      value: '27017'.input(),
                    ),
                    k8score.EnvVar(
                      name: 'DATABASE_NAME'.input(),
                      value: 'votes'.input(),
                    ),
                  ].input(),
                ),
              ].input(),
            ).input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final clientLabels = <String, String>{'app': 'client'};
    final clientService = k8score.ServiceCoreV1(
      'client-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: clientLabels.input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.input(),
          selector: clientLabels.input(),
          ports: [
            k8score.ServicePort(port: 3000.input(), targetPort: 3000.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    k8sapps.DeploymentAppsV1(
      'client',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: clientLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 2.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: clientLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: clientLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'client'.input(),
                  image: 'nginx:1.27-alpine'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'http'.input(),
                      containerPort: 3000.input(),
                    ),
                  ].input(),
                  env: [
                    k8score.EnvVar(
                      name: 'SERVER_HOSTNAME'.input(),
                      value: 'server-service'.input(),
                    ),
                  ].input(),
                ),
              ].input(),
            ).input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    kubeconfig = cluster.kubeconfig;
    url = clientService.metadata.apply((m) => m.name);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('kubeConfig', kubeconfig),
      pulumi.OutputProperty('URL', url),
    ];
  }
}
