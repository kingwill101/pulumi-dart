import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class EksHelloWorldStack extends pulumi.Stack {
  late final pulumi.Output<dynamic> kubeconfig;
  late final pulumi.Output<String> namespaceName;
  late final pulumi.Output<String> deploymentName;
  late final pulumi.Output<String> serviceName;
  late final pulumi.Output<String> serviceHostname;

  EksHelloWorldStack() {
    const name = 'helloworld';
    final appLabels = <String, String>{'appClass': name};

    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(numberOfAvailabilityZones: 2.output()),
    );

    final cluster = eks.Cluster(
      name,
      args: eks.ClusterArgs(
        vpcId: vpc.vpcId,
        subnetIds: vpc.publicSubnetIds,
        authenticationMode: eks.AuthenticationMode.api.output(),
        desiredCapacity: 2.output(),
        minSize: 1.output(),
        maxSize: 2.output(),
        storageClasses: 'gp2'.output(),
      ),
    );

    final k8sProvider = k8sproviders.ProviderProvider(
      '$name-k8s',
      args: k8sproviders.ProviderArgs(kubeconfig: cluster.kubeconfigJson),
    );

    final ns = k8score.NamespaceCoreV1(
      name,
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    namespaceName = ns.metadata.apply((m) => m.name ?? '');

    final deployment = k8sapps.DeploymentAppsV1(
      name,
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: appLabels,
        ).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: appLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: name,
                  image: 'nginx:latest',
                  ports: [k8score.ContainerPort(name: 'http', containerPort: 80)],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    deploymentName = deployment.metadata.apply((m) => m.name ?? '');

    final service = k8score.ServiceCoreV1(
      name,
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: appLabels,
        ).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: appLabels,
          ports: [k8score.ServicePort(port: 80, targetPort: 80)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    serviceName = service.metadata.apply((m) => m.name ?? '');
    serviceHostname = service.status.apply((status) {
      final ingress = status?.loadBalancer?.ingress;
      if (ingress == null || ingress.isEmpty) {
        return '';
      }
      return ingress.first.hostname ?? ingress.first.ip ?? '';
    });

    kubeconfig = cluster.kubeconfig;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('kubeconfig', kubeconfig),
      pulumi.OutputProperty('namespaceName', namespaceName),
      pulumi.OutputProperty('deploymentName', deploymentName),
      pulumi.OutputProperty('serviceName', serviceName),
      pulumi.OutputProperty('serviceHostname', serviceHostname),
    ];
  }
}
