// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Volume.
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

  VolumeArgs({
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
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final finalSnapshotValue = finalSnapshot;
    if (finalSnapshotValue != null) {
      map['finalSnapshot'] = finalSnapshotValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final multiAttachEnabledValue = multiAttachEnabled;
    if (multiAttachEnabledValue != null) {
      map['multiAttachEnabled'] = multiAttachEnabledValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final volumeInitializationRateValue = volumeInitializationRate;
    if (volumeInitializationRateValue != null) {
      map['volumeInitializationRate'] = volumeInitializationRateValue;
    }
    return map;
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      availabilityZone: pulumi.Input.asInput<String>(map['availabilityZone']),
      encrypted: pulumi.Input.asOptionalInput<bool>(map['encrypted']),
      finalSnapshot: pulumi.Input.asOptionalInput<bool>(map['finalSnapshot']),
      iops: pulumi.Input.asOptionalInput<int>(map['iops']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      multiAttachEnabled:
          pulumi.Input.asOptionalInput<bool>(map['multiAttachEnabled']),
      outpostArn: pulumi.Input.asOptionalInput<String>(map['outpostArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      size: pulumi.Input.asOptionalInput<int>(map['size']),
      snapshotId: pulumi.Input.asOptionalInput<String>(map['snapshotId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughput: pulumi.Input.asOptionalInput<int>(map['throughput']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      volumeInitializationRate:
          pulumi.Input.asOptionalInput<int>(map['volumeInitializationRate']),
    );
  }
}
