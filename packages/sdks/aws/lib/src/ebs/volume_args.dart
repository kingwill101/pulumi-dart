// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_ebs_volume_volume_args_doc}
class VolumeArgs {
  /// Availability zone where the EBS volume will exist.
  final pulumi.Input<String> availabilityZone;
  /// If true, the disk will be encrypted.
  final pulumi.Input<bool?>? encrypted;
  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  final pulumi.Input<bool?>? finalSnapshot;
  /// Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  final pulumi.Input<int?>? iops;
  /// ARN for the KMS encryption key. When specifying `kmsKeyId`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  final pulumi.Input<String?>? kmsKeyId;
  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  final pulumi.Input<bool?>? multiAttachEnabled;
  /// ARN of the Outpost.
  final pulumi.Input<String?>? outpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Size of the drive in GiBs.
  final pulumi.Input<int?>? size;
  /// A snapshot to base the EBS volume off of.
  final pulumi.Input<String?>? snapshotId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  final pulumi.Input<int?>? throughput;
  /// Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  final pulumi.Input<String?>? type;
  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshotId` is specified.
  ///
  /// &gt; **NOTE:** At least one of `size` or `snapshotId` is required.
  ///
  /// &gt; **NOTE:** When changing the `size`, `iops` or `type` of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  final pulumi.Input<int?>? volumeInitializationRate;

  /// Creates a new [VolumeArgs].
  /// [availabilityZone] Availability zone where the EBS volume will exist.
  /// [encrypted] If true, the disk will be encrypted.
  /// [finalSnapshot] If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  /// [iops] Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kmsKeyId`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  /// [multiAttachEnabled] Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  /// [outpostArn] ARN of the Outpost.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [size] Size of the drive in GiBs.
  /// [snapshotId] A snapshot to base the EBS volume off of.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughput] Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  /// [type] Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  /// [volumeInitializationRate] EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshotId` is specified.
  const VolumeArgs({
    required this.availabilityZone,
    this.encrypted,
    this.finalSnapshot,
    this.iops,
    this.kmsKeyId,
    this.multiAttachEnabled,
    this.outpostArn,
    this.region,
    this.size,
    this.snapshotId,
    this.tags,
    this.throughput,
    this.type,
    this.volumeInitializationRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'encrypted': ?encrypted,
      'finalSnapshot': ?finalSnapshot,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'multiAttachEnabled': ?multiAttachEnabled,
      'outpostArn': ?outpostArn,
      'region': ?region,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'throughput': ?throughput,
      'type': ?type,
      'volumeInitializationRate': ?volumeInitializationRate,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      finalSnapshot: (() { final guardedValue = map['finalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAttachEnabled: (() { final guardedValue = map['multiAttachEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeInitializationRate: (() { final guardedValue = map['volumeInitializationRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
