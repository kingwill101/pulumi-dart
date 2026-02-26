// ignore_for_file: unused_element, unnecessary_cast

/// Information about the Kubernetes Service networking configuration.
class ServiceNetworkingResponse {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final String deployment;

  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final bool disablePodOverprovisioning;

  /// Name of the Kubernetes Service.
  final String service;

  ServiceNetworkingResponse({
    required this.deployment,
    required this.disablePodOverprovisioning,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    map['disablePodOverprovisioning'] = disablePodOverprovisioning;
    map['service'] = service;
    return map;
  }

  factory ServiceNetworkingResponse.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkingResponse(
      deployment: map['deployment'] as String,
      disablePodOverprovisioning: map['disablePodOverprovisioning'] as bool,
      service: map['service'] as String,
    );
  }
}
