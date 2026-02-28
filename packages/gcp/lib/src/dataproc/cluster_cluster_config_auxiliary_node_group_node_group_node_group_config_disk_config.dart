// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig {
  /// Size of the primary disk attached to each node, specified
  /// in GB. The primary disk contains the boot volume and system libraries, and the
  /// smallest allowed disk size is 10GB. GCP will default to a predetermined
  /// computed value if not set (currently 500GB). Note: If SSDs are not
  /// attached, it also contains the HDFS data blocks and Hadoop working directories.
  final int? bootDiskSizeGb;

  /// The disk type of the primary disk attached to each node.
  /// One of `"pd-ssd"` or `"pd-standard"`. Defaults to `"pd-standard"`.
  final String? bootDiskType;

  /// Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  final String? localSsdInterface;

  /// The amount of local SSD disks that will be attached to each master cluster node.
  /// Defaults to 0.
  final int? numLocalSsds;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig].
  /// [bootDiskSizeGb] Size of the primary disk attached to each node, specified
  /// [bootDiskType] The disk type of the primary disk attached to each node.
  /// [localSsdInterface] Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  /// [numLocalSsds] The amount of local SSD disks that will be attached to each master cluster node.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
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
    final localSsdInterfaceValue = localSsdInterface;
    if (localSsdInterfaceValue != null) {
      map['localSsdInterface'] = localSsdInterfaceValue;
    }
    final numLocalSsdsValue = numLocalSsds;
    if (numLocalSsdsValue != null) {
      map['numLocalSsds'] = numLocalSsdsValue;
    }
    return map;
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig(
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      bootDiskType:
          map['bootDiskType'] == null ? null : map['bootDiskType'] as String,
      localSsdInterface: map['localSsdInterface'] == null
          ? null
          : map['localSsdInterface'] as String,
      numLocalSsds:
          map['numLocalSsds'] == null ? null : map['numLocalSsds'] as int,
    );
  }
}
