import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class LocalAiFlowiseStack extends pulumi.Stack {
  late final pulumi.Output<dynamic> kubeconfig;
  late final pulumi.Output<String> localAiServiceHostname;
  late final pulumi.Output<String> flowiseServiceHostname;

  LocalAiFlowiseStack() {
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

    final localAiLabels = <String, String>{'app': 'local-ai'};
    final localAiNamespace = k8score.NamespaceCoreV1(
      'local-ai',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final localAiNsName = localAiNamespace.metadata.apply((m) => m.name ?? 'local-ai');

    final localAiDeployment = k8sapps.DeploymentAppsV1(
      'local-ai',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(namespace: localAiNsName, labels: localAiLabels).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: localAiLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: localAiLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'local-ai',
                  image: 'quay.io/go-skynet/local-ai:latest',
                  ports: [k8score.ContainerPort(name: 'http', containerPort: 8080)],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final localAiService = k8score.ServiceCoreV1(
      'local-ai-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: localAiNsName,
          labels: localAiDeployment.metadata.apply((m) => m.labels),
        ).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: localAiLabels,
          ports: [k8score.ServicePort(port: 8080, targetPort: 8080)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final flowiseLabels = <String, String>{'app': 'flowise'};
    final flowiseNamespace = k8score.NamespaceCoreV1(
      'flowise',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final flowiseNsName = flowiseNamespace.metadata.apply((m) => m.name ?? 'flowise');

    final flowiseDeployment = k8sapps.DeploymentAppsV1(
      'flowise',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(namespace: flowiseNsName, labels: flowiseLabels).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: flowiseLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: flowiseLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'flowise',
                  image: 'flowiseai/flowise:latest',
                  ports: [k8score.ContainerPort(name: 'http', containerPort: 3000)],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final flowiseService = k8score.ServiceCoreV1(
      'flowise-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: flowiseNsName,
          labels: flowiseDeployment.metadata.apply((m) => m.labels),
        ).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: flowiseLabels,
          ports: [k8score.ServicePort(port: 3000, targetPort: 3000)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    kubeconfig = cluster.kubeconfig;
    localAiServiceHostname = localAiService.status.apply((s) {
      final ingress = s?.loadBalancer?.ingress;
      if (ingress == null || ingress.isEmpty) {
        return '';
      }
      return ingress.first.hostname ?? ingress.first.ip ?? '';
    });
    flowiseServiceHostname = flowiseService.status.apply((s) {
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
      pulumi.OutputProperty('kubeconfig', kubeconfig),
      pulumi.OutputProperty('localAiServiceHostname', localAiServiceHostname),
      pulumi.OutputProperty('flowiseServiceHostname', flowiseServiceHostname),
    ];
  }
}
