// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfig {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool? enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  final bool? enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool? enabled;

  ConfigManagementHierarchyControllerConfig({
    this.enableHierarchicalResourceQuota,
    this.enablePodTreeLabels,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableHierarchicalResourceQuotaValue =
        enableHierarchicalResourceQuota;
    if (enableHierarchicalResourceQuotaValue != null) {
      map['enableHierarchicalResourceQuota'] =
          enableHierarchicalResourceQuotaValue;
    }
    final enablePodTreeLabelsValue = enablePodTreeLabels;
    if (enablePodTreeLabelsValue != null) {
      map['enablePodTreeLabels'] = enablePodTreeLabelsValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ConfigManagementHierarchyControllerConfig.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfig(
      enableHierarchicalResourceQuota:
          map['enableHierarchicalResourceQuota'] == null
              ? null
              : map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] == null
          ? null
          : map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
