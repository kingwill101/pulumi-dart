// ignore_for_file: unused_element, unnecessary_cast


class InstanceGroupEbsConfig {
  /// The number of I/O operations per second (IOPS) that the volume supports.
  final int? iops;
  /// The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10.
  final int size;
  /// The volume type. Valid options are 'gp2', 'io1' and 'standard'.
  final String type;
  /// The number of EBS Volumes to attach per instance.
  final int? volumesPerInstance;

  /// Creates a new [InstanceGroupEbsConfig].
  /// [iops] The number of I/O operations per second (IOPS) that the volume supports.
  /// [size] The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10.
  /// [type] The volume type. Valid options are 'gp2', 'io1' and 'standard'.
  /// [volumesPerInstance] The number of EBS Volumes to attach per instance.
  InstanceGroupEbsConfig({
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

  factory InstanceGroupEbsConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGroupEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null ? null : map['volumesPerInstance'] as int,
    );
  }
}

