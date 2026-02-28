// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the config of disk options for a group of VM instances.
class DiskConfigResponseDataprocV1beta2 {
  /// Optional. Size in GB of the boot disk (default is 500GB).
  final int bootDiskSizeGb;

  /// Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-balanced" (Persistent Disk Balanced Solid State Drive), "pd-ssd" (Persistent Disk Solid State Drive), or "pd-standard" (Persistent Disk Hard Disk Drive). See Disk types (https://cloud.google.com/compute/docs/disks#disk-types).
  final String bootDiskType;

  /// Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  final int numLocalSsds;

  /// Creates a new [DiskConfigResponseDataprocV1beta2].
  /// [bootDiskSizeGb] Optional. Size in GB of the boot disk (default is 500GB).
  /// [bootDiskType] Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-balanced" (Persistent Disk Balanced Solid State Drive), "pd-ssd" (Persistent Disk Solid State Drive), or "pd-standard" (Persistent Disk Hard Disk Drive). See Disk types (https://cloud.google.com/compute/docs/disks#disk-types).
  /// [numLocalSsds] Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  DiskConfigResponseDataprocV1beta2({
    required this.bootDiskSizeGb,
    required this.bootDiskType,
    required this.numLocalSsds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootDiskSizeGb'] = bootDiskSizeGb;
    map['bootDiskType'] = bootDiskType;
    map['numLocalSsds'] = numLocalSsds;
    return map;
  }

  factory DiskConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return DiskConfigResponseDataprocV1beta2(
      bootDiskSizeGb: map['bootDiskSizeGb'] as int,
      bootDiskType: map['bootDiskType'] as String,
      numLocalSsds: map['numLocalSsds'] as int,
    );
  }
}
