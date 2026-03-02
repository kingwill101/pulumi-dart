// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  final pulumi.Input<String>? arn;
  /// Availability zone where the EBS volume will exist.
  final pulumi.Input<String>? availabilityZone;
  /// Timestamp when volume creation was initiated.
  final pulumi.Input<String>? createTime;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
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

  /// Creates a new [VolumeState].
  /// [arn] Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  /// [availabilityZone] Availability zone where the EBS volume will exist.
  /// [createTime] Timestamp when volume creation was initiated.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughput] Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  /// [type] Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  /// [volumeInitializationRate] EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshot_id` is specified.
  VolumeState({
    this.arn,
    this.availabilityZone,
    this.createTime,
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
    this.tagsAll,
    this.throughput,
    this.type,
    this.volumeInitializationRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'createTime': ?createTime,
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
      'tagsAll': ?tagsAll,
      'throughput': ?throughput,
      'type': ?type,
      'volumeInitializationRate': ?volumeInitializationRate,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      createTime: map['createTime'] == null ? null : ((map['createTime'] as String).input()).input(),
      encrypted: map['encrypted'] == null ? null : ((map['encrypted'] as bool).input()).input(),
      finalSnapshot: map['finalSnapshot'] == null ? null : ((map['finalSnapshot'] as bool).input()).input(),
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      multiAttachEnabled: map['multiAttachEnabled'] == null ? null : ((map['multiAttachEnabled'] as bool).input()).input(),
      outpostArn: map['outpostArn'] == null ? null : ((map['outpostArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      size: map['size'] == null ? null : ((map['size'] as int).input()).input(),
      snapshotId: map['snapshotId'] == null ? null : ((map['snapshotId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      throughput: map['throughput'] == null ? null : ((map['throughput'] as int).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      volumeInitializationRate: map['volumeInitializationRate'] == null ? null : ((map['volumeInitializationRate'] as int).input()).input(),
    );
  }
}

