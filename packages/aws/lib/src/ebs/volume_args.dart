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
  final pulumi.Input<bool>? encrypted;

  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  final pulumi.Input<bool>? finalSnapshot;

  /// Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  final pulumi.Input<int>? iops;

  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  final pulumi.Input<String>? kmsKeyId;

  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  final pulumi.Input<bool>? multiAttachEnabled;

  /// Amazon Resource Name (ARN) of the Outpost.
  final pulumi.Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Size of the drive in GiBs.
  final pulumi.Input<int>? size;

  /// A snapshot to base the EBS volume off of.
  final pulumi.Input<String>? snapshotId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  final pulumi.Input<int>? throughput;

  /// Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  final pulumi.Input<String>? type;

  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshot_id` is specified.
  ///
  /// > **NOTE:** At least one of `size` or `snapshot_id` is required.
  ///
  /// > **NOTE:** When changing the `size`, `iops` or `type` of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  final pulumi.Input<int>? volumeInitializationRate;

  /// Creates a new [VolumeArgs].
  /// [availabilityZone] Availability zone where the EBS volume will exist.
  /// [encrypted] If true, the disk will be encrypted.
  /// [finalSnapshot] If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  /// [iops] Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  /// [multiAttachEnabled] Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  /// [outpostArn] Amazon Resource Name (ARN) of the Outpost.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [size] Size of the drive in GiBs.
  /// [snapshotId] A snapshot to base the EBS volume off of.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughput] Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  /// [type] Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  /// [volumeInitializationRate] EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshot_id` is specified.
  VolumeArgs({
    required String availabilityZone,
    bool? encrypted,
    bool? finalSnapshot,
    int? iops,
    String? kmsKeyId,
    bool? multiAttachEnabled,
    String? outpostArn,
    String? region,
    int? size,
    String? snapshotId,
    Map<String, String>? tags,
    int? throughput,
    String? type,
    int? volumeInitializationRate,
  }) : availabilityZone = pulumi.Input.asInput<String>(availabilityZone),
       encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
       finalSnapshot = pulumi.Input.asOptionalInput<bool>(finalSnapshot),
       iops = pulumi.Input.asOptionalInput<int>(iops),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       multiAttachEnabled = pulumi.Input.asOptionalInput<bool>(
         multiAttachEnabled,
       ),
       outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       size = pulumi.Input.asOptionalInput<int>(size),
       snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       throughput = pulumi.Input.asOptionalInput<int>(throughput),
       type = pulumi.Input.asOptionalInput<String>(type),
       volumeInitializationRate = pulumi.Input.asOptionalInput<int>(
         volumeInitializationRate,
       );

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
      availabilityZone: map['availabilityZone'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      finalSnapshot: map['finalSnapshot'] == null
          ? null
          : map['finalSnapshot'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      multiAttachEnabled: map['multiAttachEnabled'] == null
          ? null
          : map['multiAttachEnabled'] as bool,
      outpostArn: map['outpostArn'] == null
          ? null
          : map['outpostArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      size: map['size'] == null ? null : map['size'] as int,
      snapshotId: map['snapshotId'] == null
          ? null
          : map['snapshotId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      volumeInitializationRate: map['volumeInitializationRate'] == null
          ? null
          : map['volumeInitializationRate'] as int,
    );
  }
}
