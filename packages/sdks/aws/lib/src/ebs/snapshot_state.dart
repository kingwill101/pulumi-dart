// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  final pulumi.Input<String>? arn;
  /// The data encryption key identifier for the snapshot.
  final pulumi.Input<String>? dataEncryptionKeyId;
  /// A description of what the snapshot is.
  final pulumi.Input<String>? description;
  /// Whether the snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// The ARN for the KMS encryption key.
  final pulumi.Input<String>? kmsKeyId;
  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  final pulumi.Input<String>? outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  final pulumi.Input<String>? ownerAlias;
  /// The AWS account ID of the EBS snapshot owner.
  final pulumi.Input<String>? ownerId;
  /// Indicates whether to permanently restore an archived snapshot.
  final pulumi.Input<bool>? permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  final pulumi.Input<String>? storageTier;
  /// A map of tags to assign to the snapshot. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;
  /// The Volume ID of which to make a snapshot.
  final pulumi.Input<String>? volumeId;
  /// The size of the drive in GiBs.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [SnapshotState].
  /// [arn] Amazon Resource Name (ARN) of the EBS Snapshot.
  /// [dataEncryptionKeyId] The data encryption key identifier for the snapshot.
  /// [description] A description of what the snapshot is.
  /// [encrypted] Whether the snapshot is encrypted.
  /// [kmsKeyId] The ARN for the KMS encryption key.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  /// [ownerAlias] Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  /// [ownerId] The AWS account ID of the EBS snapshot owner.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags to assign to the snapshot. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  /// [volumeId] The Volume ID of which to make a snapshot.
  /// [volumeSize] The size of the drive in GiBs.
  const SnapshotState({
    this.arn,
    this.dataEncryptionKeyId,
    this.description,
    this.encrypted,
    this.kmsKeyId,
    this.outpostArn,
    this.ownerAlias,
    this.ownerId,
    this.permanentRestore,
    this.region,
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
      'dataEncryptionKeyId': ?dataEncryptionKeyId,
      'description': ?description,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'outpostArn': ?outpostArn,
      'ownerAlias': ?ownerAlias,
      'ownerId': ?ownerId,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'temporaryRestoreDays': ?temporaryRestoreDays,
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataEncryptionKeyId: (() { final guardedValue = map['dataEncryptionKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAlias: (() { final guardedValue = map['ownerAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permanentRestore: (() { final guardedValue = map['permanentRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      temporaryRestoreDays: (() { final guardedValue = map['temporaryRestoreDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
