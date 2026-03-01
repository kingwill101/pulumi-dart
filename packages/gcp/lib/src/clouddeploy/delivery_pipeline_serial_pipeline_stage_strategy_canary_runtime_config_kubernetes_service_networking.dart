// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking {
  /// Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final String deployment;

  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final bool? disablePodOverprovisioning;

  /// Optional. The label to use when selecting Pods for the Deployment resource. This label must already be present in the Deployment.
  final String? podSelectorLabel;

  /// Required. Name of the Kubernetes Service.
  final String service;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking].
  /// [deployment] Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  /// [disablePodOverprovisioning] Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  /// [podSelectorLabel] Optional. The label to use when selecting Pods for the Deployment resource. This label must already be present in the Deployment.
  /// [service] Required. Name of the Kubernetes Service.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    this.podSelectorLabel,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'disablePodOverprovisioning': ?disablePodOverprovisioning,
      'podSelectorLabel': ?podSelectorLabel,
      'service': service,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking(
      deployment: map['deployment'] as String,
      disablePodOverprovisioning: map['disablePodOverprovisioning'] == null
          ? null
          : map['disablePodOverprovisioning'] as bool,
      podSelectorLabel: map['podSelectorLabel'] == null
          ? null
          : map['podSelectorLabel'] as String,
      service: map['service'] as String,
    );
  }
}
