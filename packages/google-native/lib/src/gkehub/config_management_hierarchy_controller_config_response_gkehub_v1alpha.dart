// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool enableHierarchicalResourceQuota;
  /// Whether pod tree labels are enabled in this cluster.
  final bool enablePodTreeLabels;
  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool enabled;

  /// Creates a new [ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha].
  /// [enableHierarchicalResourceQuota] Whether hierarchical resource quota is enabled in this cluster.
  /// [enablePodTreeLabels] Whether pod tree labels are enabled in this cluster.
  /// [enabled] Whether Hierarchy Controller is enabled in this cluster.
  ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha({
    required this.enableHierarchicalResourceQuota,
    required this.enablePodTreeLabels,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHierarchicalResourceQuota': enableHierarchicalResourceQuota,
      'enablePodTreeLabels': enablePodTreeLabels,
      'enabled': enabled,
    };
  }

  factory ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha(
      enableHierarchicalResourceQuota: map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}

