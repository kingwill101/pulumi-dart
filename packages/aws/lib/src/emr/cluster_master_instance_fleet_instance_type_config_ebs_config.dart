// ignore_for_file: unused_element, unnecessary_cast


class ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig {
  /// Number of I/O operations per second (IOPS) that the volume supports.
  final int? iops;
  /// Volume size, in gibibytes (GiB).
  final int size;
  /// Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final String type;
  /// Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  final int? volumesPerInstance;

  /// Creates a new [ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig].
  /// [iops] Number of I/O operations per second (IOPS) that the volume supports.
  /// [size] Volume size, in gibibytes (GiB).
  /// [type] Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  /// [volumesPerInstance] Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'size': size,
      'type': type,
      'volumesPerInstance': ?volumesPerInstance,
    };
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null ? null : map['volumesPerInstance'] as int,
    );
  }
}

