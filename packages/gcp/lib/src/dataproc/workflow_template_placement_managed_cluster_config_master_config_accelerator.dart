// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance.
  final int? acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`.
  final String? acceleratorType;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance.
  /// [acceleratorType] Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`.
  WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
