// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFleetInstanceTypeConfigEbsConfig {
  /// The number of I/O operations per second (IOPS) that the volume supports
  final pulumi.Input<int?>? iops;
  /// The volume size, in gibibytes (GiB).
  final pulumi.Input<int> size;
  /// The volume type. Valid options are `gp2`, `io1`, `standard` and `st1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final pulumi.Input<String> type;
  /// The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)
  final pulumi.Input<int?>? volumesPerInstance;

  /// Creates a new [InstanceFleetInstanceTypeConfigEbsConfig].
  /// [iops] The number of I/O operations per second (IOPS) that the volume supports
  /// [size] The volume size, in gibibytes (GiB).
  /// [type] The volume type. Valid options are `gp2`, `io1`, `standard` and `st1`. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  /// [volumesPerInstance] The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)
  const InstanceFleetInstanceTypeConfigEbsConfig({
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
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
      volumesPerInstance: (() { final guardedValue = map['volumesPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
