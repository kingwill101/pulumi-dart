// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponse {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  final bool enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool enabled;

  ConfigManagementHierarchyControllerConfigResponse({
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

  factory ConfigManagementHierarchyControllerConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfigResponse(
      enableHierarchicalResourceQuota:
          map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}
