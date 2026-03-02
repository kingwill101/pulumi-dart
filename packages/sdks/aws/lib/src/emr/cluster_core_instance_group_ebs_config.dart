// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCoreInstanceGroupEbsConfig {
  /// Number of I/O operations per second (IOPS) that the volume supports.
  final pulumi.Input<int>? iops;
  /// Volume size, in gibibytes (GiB).
  final pulumi.Input<int> size;
  /// The throughput, in mebibyte per second (MiB/s).
  final pulumi.Input<int>? throughput;
  /// Volume type. Valid options are `gp3`, `gp2`, `io1`, `io2`, `standard`, `st1` and `sc1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final pulumi.Input<String> type;
  /// Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).
  final pulumi.Input<int>? volumesPerInstance;

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
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      size: (map['size'] as int).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      type: (map['type'] as String).input(),
      volumesPerInstance: map['volumesPerInstance'] == null ? null : (map['volumesPerInstance'] as int).input(),
    );
  }
}

