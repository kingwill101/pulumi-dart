import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/index.dart' as eks_index;
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

    final cluster = eks.index.Cluster(
      name,
      args: eks.index.ClusterArgs(
        vpcId: vpc.vpcId,
        subnetIds: vpc.publicSubnetIds,
        authenticationMode: eks_index.AuthenticationMode.api.input(),
        desiredCapacity: 2.output(),
        minSize: 1.output(),
        maxSize: 2.output(),
        storageClasses: 'gp2'.input(),
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

    namespaceName = ns.metadata.apply((m) => m.name);

    final deployment = k8sapps.DeploymentAppsV1(
      name,
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: appLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: appLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: name.input(),
                  image: 'nginx:latest'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'http'.input(),
                      containerPort: 80.input(),
                    ),
                  ].input(),
                ),
              ].input(),
            ).input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    deploymentName = deployment.metadata.apply((m) => m.name);

    final service = k8score.ServiceCoreV1(
      name,
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: namespaceName,
          labels: appLabels.input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.input(),
          selector: appLabels.input(),
          ports: [
            k8score.ServicePort(port: 80.input(), targetPort: 80.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    serviceName = service.metadata.apply((m) => m.name);
    serviceHostname = service.status.apply<String>((_) => '');

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
