import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_eks/index.dart' as eks_index;
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
      args: awsx.ec2.VpcArgs(numberOfAvailabilityZones: 2.input()),
    );

    final cluster = eks.index.Cluster(
      'eks-cluster',
      args: eks.index.ClusterArgs(
        vpcId: vpc.vpcId.apply((v) => v!),
        subnetIds: vpc.publicSubnetIds.apply((v) => v!),
        authenticationMode: eks_index.AuthenticationMode.api.input(),
        desiredCapacity: 3.input(),
        minSize: 2.input(),
        maxSize: 4.input(),
        storageClasses: 'gp2'.input(),
      ),
    );

    final provider = k8sproviders.ProviderProvider(
      'k8s',
      args: k8sproviders.ProviderArgs(
        kubeconfig: cluster.kubeconfigJson.apply((v) => v!),
      ),
    );

    final localAiLabels = <String, String>{'app': 'local-ai'};
    final localAiNamespace = k8score.NamespaceCoreV1(
      'local-ai',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final localAiNsName = localAiNamespace.metadata.apply<String>(
      (m) => m.name ?? 'local-ai',
    );

    final localAiDeployment = k8sapps.DeploymentAppsV1(
      'local-ai',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: localAiNsName,
          labels: localAiLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: localAiLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: localAiLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'local-ai'.input(),
                  image: 'quay.io/go-skynet/local-ai:latest'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'http'.input(),
                      containerPort: 8080.input(),
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

    final localAiService = k8score.ServiceCoreV1(
      'local-ai-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: localAiNsName,
          labels: localAiDeployment.metadata
              .apply<Map<String, String>?>((m) => m.labels)
              .apply<Map<String, String>>((labels) => labels ?? localAiLabels)
              .input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.input(),
          selector: localAiLabels.input(),
          ports: [
            k8score.ServicePort(port: 8080.input(), targetPort: 8080.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final flowiseLabels = <String, String>{'app': 'flowise'};
    final flowiseNamespace = k8score.NamespaceCoreV1(
      'flowise',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final flowiseNsName = flowiseNamespace.metadata.apply<String>(
      (m) => m.name ?? 'flowise',
    );

    final flowiseDeployment = k8sapps.DeploymentAppsV1(
      'flowise',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: flowiseNsName,
          labels: flowiseLabels.input(),
        ).input(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1.input(),
          selector: k8smeta.LabelSelector(
            matchLabels: flowiseLabels.input(),
          ).input(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: flowiseLabels.input()).input(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'flowise'.input(),
                  image: 'flowiseai/flowise:latest'.input(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'http'.input(),
                      containerPort: 3000.input(),
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

    final flowiseService = k8score.ServiceCoreV1(
      'flowise-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: flowiseNsName,
          labels: flowiseDeployment.metadata
              .apply<Map<String, String>?>((m) => m.labels)
              .apply<Map<String, String>>((labels) => labels ?? flowiseLabels)
              .input(),
        ).input(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.input(),
          selector: flowiseLabels.input(),
          ports: [
            k8score.ServicePort(port: 3000.input(), targetPort: 3000.input()),
          ].input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    kubeconfig = cluster.kubeconfig;
    localAiServiceHostname = localAiService.metadata.apply<String>(
      (m) => m.name ?? '',
    );
    flowiseServiceHostname = flowiseService.metadata.apply<String>(
      (m) => m.name ?? '',
    );
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
