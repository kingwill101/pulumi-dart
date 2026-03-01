// ignore_for_file: unused_element, unnecessary_cast


class InstanceFleetInstanceTypeConfigEbsConfig {
  /// The number of I/O operations per second (IOPS) that the volume supports
  final int? iops;
  /// The volume size, in gibibytes (GiB).
  final int size;
  /// The volume type. Valid options are `gp2`, `io1`, `standard` and `st1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final String type;
  /// The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)
  final int? volumesPerInstance;

  /// Creates a new [InstanceFleetInstanceTypeConfigEbsConfig].
  /// [iops] The number of I/O operations per second (IOPS) that the volume supports
  /// [size] The volume size, in gibibytes (GiB).
  /// [type] The volume type. Valid options are `gp2`, `io1`, `standard` and `st1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  /// [volumesPerInstance] The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)
  InstanceFleetInstanceTypeConfigEbsConfig({
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

  factory InstanceFleetInstanceTypeConfigEbsConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFleetInstanceTypeConfigEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null ? null : map['volumesPerInstance'] as int,
    );
  }
}

