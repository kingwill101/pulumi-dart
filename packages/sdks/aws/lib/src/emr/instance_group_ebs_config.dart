// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupEbsConfig {
  /// The number of I/O operations per second (IOPS) that the volume supports.
  final pulumi.Input<int>? iops;

  /// The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10.
  final pulumi.Input<int> size;

  /// The volume type. Valid options are 'gp2', 'io1' and 'standard'.
  final pulumi.Input<String> type;

  /// The number of EBS Volumes to attach per instance.
  final pulumi.Input<int>? volumesPerInstance;

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
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      volumesPerInstance: (() {
        final guardedValue = map['volumesPerInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
