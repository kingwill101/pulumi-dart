// ignore_for_file: unused_element, unnecessary_cast

class ClusterCostManagementConfig {
  /// Whether to enable the [cost allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  final bool enabled;

  ClusterCostManagementConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterCostManagementConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCostManagementConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
