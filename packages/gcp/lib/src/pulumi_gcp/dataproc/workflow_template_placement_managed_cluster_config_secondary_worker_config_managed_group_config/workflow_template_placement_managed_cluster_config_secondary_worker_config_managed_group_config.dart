// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final String? instanceGroupManagerName;

  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final String? instanceTemplateName;

  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig({
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

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig(
      instanceGroupManagerName: map['instanceGroupManagerName'] == null
          ? null
          : map['instanceGroupManagerName'] as String,
      instanceTemplateName: map['instanceTemplateName'] == null
          ? null
          : map['instanceTemplateName'] as String,
    );
  }
}
