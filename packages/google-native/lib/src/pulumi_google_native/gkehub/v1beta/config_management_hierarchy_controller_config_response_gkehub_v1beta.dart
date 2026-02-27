// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponseGkehubV1beta {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  final bool enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool enabled;

  ConfigManagementHierarchyControllerConfigResponseGkehubV1beta({
    required this.enableHierarchicalResourceQuota,
    required this.enablePodTreeLabels,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableHierarchicalResourceQuota'] = enableHierarchicalResourceQuota;
    map['enablePodTreeLabels'] = enablePodTreeLabels;
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigManagementHierarchyControllerConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfigResponseGkehubV1beta(
      enableHierarchicalResourceQuota:
          map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}
