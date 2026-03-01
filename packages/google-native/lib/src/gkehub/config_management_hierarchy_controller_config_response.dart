// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponse {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  final bool enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool enabled;

  /// Creates a new [ConfigManagementHierarchyControllerConfigResponse].
  /// [enableHierarchicalResourceQuota] Whether hierarchical resource quota is enabled in this cluster.
  /// [enablePodTreeLabels] Whether pod tree labels are enabled in this cluster.
  /// [enabled] Whether Hierarchy Controller is enabled in this cluster.
  ConfigManagementHierarchyControllerConfigResponse({
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

  factory ConfigManagementHierarchyControllerConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementHierarchyControllerConfigResponse(
      enableHierarchicalResourceQuota:
          map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}
