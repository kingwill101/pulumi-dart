// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_copy_timeouts.dart';

/// {@template pulumi_ebs_volume_copy_volume_copy_args_doc}
/// The set of arguments for VolumeCopy.
/// {@endtemplate}
/// {@macro pulumi_ebs_volume_copy_volume_copy_args_doc}
class VolumeCopyArgs {
  /// Provisioned IOPS for the copied volume. Use only with volume types that support provisioned IOPS, such as `gp3`.
  final pulumi.Input<int>? iops;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration. This must match the Region of the source EBS volume referenced by `sourceVolumeId`.
  final pulumi.Input<String>? region;
  /// Size of the copied volume, in GiB.
  final pulumi.Input<int>? size;
  /// ID of the source EBS volume to copy. Changing this value forces replacement of the resource.
  final pulumi.Input<String> sourceVolumeId;
  /// A map of tags to assign to the copied volume. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Throughput for the copied volume, in MiB/s. Valid only when `volumeType` is `gp3`.
  final pulumi.Input<int>? throughput;
  final pulumi.Input<VolumeCopyTimeouts>? timeouts;
  /// Type of the copied EBS volume. Valid values include `gp2`, `gp3`, `io1`, `io2`, `sc1`, `st1`, and `standard`.
  ///
  /// &gt; **NOTE:** When changing the `size`, `iops` or `type` of a volume, there are [considerations](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html) to be aware of.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [VolumeCopyArgs].
  /// [iops] Provisioned IOPS for the copied volume. Use only with volume types that support provisioned IOPS, such as `gp3`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration. This must match the Region of the source EBS volume referenced by `sourceVolumeId`.
  /// [size] Size of the copied volume, in GiB.
  /// [sourceVolumeId] ID of the source EBS volume to copy. Changing this value forces replacement of the resource.
  /// [tags] A map of tags to assign to the copied volume. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughput] Throughput for the copied volume, in MiB/s. Valid only when `volumeType` is `gp3`.
  /// [timeouts] Optional.
  /// [volumeType] Type of the copied EBS volume. Valid values include `gp2`, `gp3`, `io1`, `io2`, `sc1`, `st1`, and `standard`.
  const VolumeCopyArgs({
    this.iops,
    this.region,
    this.size,
    required this.sourceVolumeId,
    this.tags,
    this.throughput,
    this.timeouts,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'region': ?region,
      'size': ?size,
      'sourceVolumeId': sourceVolumeId,
      'tags': ?tags,
      'throughput': ?throughput,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VolumeCopyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'volumeType': ?volumeType,
    };
  }

  factory VolumeCopyArgs.fromMap(Map<String, dynamic> map) {
    return VolumeCopyArgs(
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceVolumeId: pulumi.Input.fromValue(map['sourceVolumeId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
