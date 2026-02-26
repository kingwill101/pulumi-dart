// ignore_for_file: unused_element, unnecessary_cast

/// Information about the Kubernetes Service networking configuration.
class ServiceNetworking {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final String deployment;

  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final bool? disablePodOverprovisioning;

  /// Name of the Kubernetes Service.
  final String service;

  ServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    final disablePodOverprovisioningValue = disablePodOverprovisioning;
    if (disablePodOverprovisioningValue != null) {
      map['disablePodOverprovisioning'] = disablePodOverprovisioningValue;
    }
    map['service'] = service;
    return map;
  }

  factory ServiceNetworking.fromMap(Map<String, dynamic> map) {
    return ServiceNetworking(
      deployment: map['deployment'] as String,
      disablePodOverprovisioning: map['disablePodOverprovisioning'] == null
          ? null
          : map['disablePodOverprovisioning'] as bool,
      service: map['service'] as String,
    );
  }
}
