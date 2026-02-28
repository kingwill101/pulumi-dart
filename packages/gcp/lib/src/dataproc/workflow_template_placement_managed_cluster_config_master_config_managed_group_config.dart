// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final String? instanceGroupManagerName;

  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final String? instanceTemplateName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig].
  /// [instanceGroupManagerName] Output only. The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] Output only. The name of the Instance Template used for the Managed Instance Group.
  WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceGroupManagerNameValue = instanceGroupManagerName;
    if (instanceGroupManagerNameValue != null) {
      map['instanceGroupManagerName'] = instanceGroupManagerNameValue;
    }
    final instanceTemplateNameValue = instanceTemplateName;
    if (instanceTemplateNameValue != null) {
      map['instanceTemplateName'] = instanceTemplateNameValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig(
      instanceGroupManagerName: map['instanceGroupManagerName'] == null
          ? null
          : map['instanceGroupManagerName'] as String,
      instanceTemplateName: map['instanceTemplateName'] == null
          ? null
          : map['instanceTemplateName'] as String,
    );
  }
}
