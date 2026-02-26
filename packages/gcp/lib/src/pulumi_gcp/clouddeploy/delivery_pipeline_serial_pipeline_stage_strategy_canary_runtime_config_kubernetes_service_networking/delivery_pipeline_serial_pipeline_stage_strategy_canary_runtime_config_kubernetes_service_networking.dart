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

  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    this.podSelectorLabel,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    final disablePodOverprovisioningValue = disablePodOverprovisioning;
    if (disablePodOverprovisioningValue != null) {
      map['disablePodOverprovisioning'] = disablePodOverprovisioningValue;
    }
    final podSelectorLabelValue = podSelectorLabel;
    if (podSelectorLabelValue != null) {
      map['podSelectorLabel'] = podSelectorLabelValue;
    }
    map['service'] = service;
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking.fromMap(
      Map<String, dynamic> map) {
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
