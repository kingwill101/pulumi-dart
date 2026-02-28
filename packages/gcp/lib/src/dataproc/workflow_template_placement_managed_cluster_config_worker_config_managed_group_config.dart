// ignore_for_file: unused_element, unnecessary_cast


class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final String? instanceGroupManagerName;
  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final String? instanceTemplateName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig].
  /// [instanceGroupManagerName] Output only. The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] Output only. The name of the Instance Template used for the Managed Instance Group.
  WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': ?instanceGroupManagerName,
      'instanceTemplateName': ?instanceTemplateName,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig(
      instanceGroupManagerName: map['instanceGroupManagerName'] == null ? null : map['instanceGroupManagerName'] as String,
      instanceTemplateName: map['instanceTemplateName'] == null ? null : map['instanceTemplateName'] as String,
    );
  }
}

