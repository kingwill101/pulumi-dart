// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotCopy resources.
class SnapshotCopyState {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  final pulumi.Input<String>? arn;

  /// Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  final pulumi.Input<int>? completionDurationMinutes;

  /// The data encryption key identifier for the snapshot.
  final pulumi.Input<String>? dataEncryptionKeyId;

  /// A description of what the snapshot is.
  final pulumi.Input<String>? description;

  /// Whether the snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;

  /// The ARN for the KMS encryption key.
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? outpostArn;

  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  final pulumi.Input<String>? ownerAlias;

  /// The AWS account ID of the snapshot owner.
  final pulumi.Input<String>? ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  final pulumi.Input<bool>? permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The region of the source snapshot.
  final pulumi.Input<String>? sourceRegion;

  /// The ARN for the snapshot to be copied.
  final pulumi.Input<String>? sourceSnapshotId;

  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  final pulumi.Input<String>? storageTier;

  /// A map of tags for the snapshot.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;
  final pulumi.Input<String>? volumeId;

  /// The size of the drive in GiBs.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [SnapshotCopyState].
  /// [arn] Amazon Resource Name (ARN) of the EBS Snapshot.
  /// [completionDurationMinutes] Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  /// [dataEncryptionKeyId] The data encryption key identifier for the snapshot.
  /// [description] A description of what the snapshot is.
  /// [encrypted] Whether the snapshot is encrypted.
  /// [kmsKeyId] The ARN for the KMS encryption key.
  /// [outpostArn] Optional.
  /// [ownerAlias] Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  /// [ownerId] The AWS account ID of the snapshot owner.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceRegion] The region of the source snapshot.
  /// [sourceSnapshotId] The ARN for the snapshot to be copied.
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags for the snapshot.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  /// [volumeId] Optional.
  /// [volumeSize] The size of the drive in GiBs.
  SnapshotCopyState({
    this.arn,
    this.completionDurationMinutes,
    this.dataEncryptionKeyId,
    this.description,
    this.encrypted,
    this.kmsKeyId,
    this.outpostArn,
    this.ownerAlias,
    this.ownerId,
    this.permanentRestore,
    this.region,
    this.sourceRegion,
    this.sourceSnapshotId,
    this.storageTier,
    this.tags,
    this.tagsAll,
    this.temporaryRestoreDays,
    this.volumeId,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'completionDurationMinutes': ?completionDurationMinutes,
      'dataEncryptionKeyId': ?dataEncryptionKeyId,
      'description': ?description,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'outpostArn': ?outpostArn,
      'ownerAlias': ?ownerAlias,
      'ownerId': ?ownerId,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'sourceRegion': ?sourceRegion,
      'sourceSnapshotId': ?sourceSnapshotId,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'temporaryRestoreDays': ?temporaryRestoreDays,
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory SnapshotCopyState.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      completionDurationMinutes: (() {
        final guardedValue = map['completionDurationMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataEncryptionKeyId: (() {
        final guardedValue = map['dataEncryptionKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outpostArn: (() {
        final guardedValue = map['outpostArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerAlias: (() {
        final guardedValue = map['ownerAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permanentRestore: (() {
        final guardedValue = map['permanentRestore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRegion: (() {
        final guardedValue = map['sourceRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceSnapshotId: (() {
        final guardedValue = map['sourceSnapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageTier: (() {
        final guardedValue = map['storageTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      temporaryRestoreDays: (() {
        final guardedValue = map['temporaryRestoreDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeId: (() {
        final guardedValue = map['volumeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeSize: (() {
        final guardedValue = map['volumeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
