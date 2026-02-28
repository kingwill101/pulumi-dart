// ignore_for_file: unused_element, unnecessary_cast


class ClusterCoreInstanceGroupEbsConfig {
  /// Number of I/O operations per second (IOPS) that the volume supports.
  final int? iops;
  /// Volume size, in gibibytes (GiB).
  final int size;
  /// The throughput, in mebibyte per second (MiB/s).
  final int? throughput;
  /// Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final String type;
  /// Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  final int? volumesPerInstance;

  /// Creates a new [ClusterCoreInstanceGroupEbsConfig].
  /// [iops] Number of I/O operations per second (IOPS) that the volume supports.
  /// [size] Volume size, in gibibytes (GiB).
  /// [throughput] The throughput, in mebibyte per second (MiB/s).
  /// [type] Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  /// [volumesPerInstance] Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  ClusterCoreInstanceGroupEbsConfig({
    this.iops,
    required this.size,
    this.throughput,
    required this.type,
    this.volumesPerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'size': size,
      'throughput': ?throughput,
      'type': type,
      'volumesPerInstance': ?volumesPerInstance,
    };
  }

  factory ClusterCoreInstanceGroupEbsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCoreInstanceGroupEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null ? null : map['volumesPerInstance'] as int,
    );
  }
}

