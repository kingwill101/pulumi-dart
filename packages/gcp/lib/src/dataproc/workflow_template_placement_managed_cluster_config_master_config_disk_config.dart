// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig {
  /// Size in GB of the boot disk (default is 500GB).
  final int? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final String? bootDiskType;

  /// Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  final int? numLocalSsds;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 500GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  /// [numLocalSsds] Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.numLocalSsds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final bootDiskTypeValue = bootDiskType;
    if (bootDiskTypeValue != null) {
      map['bootDiskType'] = bootDiskTypeValue;
    }
    final numLocalSsdsValue = numLocalSsds;
    if (numLocalSsdsValue != null) {
      map['numLocalSsds'] = numLocalSsdsValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig(
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      bootDiskType:
          map['bootDiskType'] == null ? null : map['bootDiskType'] as String,
      numLocalSsds:
          map['numLocalSsds'] == null ? null : map['numLocalSsds'] as int,
    );
  }
}
