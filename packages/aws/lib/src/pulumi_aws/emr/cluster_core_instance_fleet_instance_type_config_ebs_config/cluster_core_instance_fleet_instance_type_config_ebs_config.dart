// ignore_for_file: unused_element, unnecessary_cast

class ClusterCoreInstanceFleetInstanceTypeConfigEbsConfig {
  /// Number of I/O operations per second (IOPS) that the volume supports.
  final int? iops;

  /// Volume size, in gibibytes (GiB).
  final int size;

  /// Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final String type;

  /// Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  final int? volumesPerInstance;

  ClusterCoreInstanceFleetInstanceTypeConfigEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    map['size'] = size;
    map['type'] = type;
    final volumesPerInstanceValue = volumesPerInstance;
    if (volumesPerInstanceValue != null) {
      map['volumesPerInstance'] = volumesPerInstanceValue;
    }
    return map;
  }

  factory ClusterCoreInstanceFleetInstanceTypeConfigEbsConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterCoreInstanceFleetInstanceTypeConfigEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null
          ? null
          : map['volumesPerInstance'] as int,
    );
  }
}
