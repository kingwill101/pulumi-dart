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
  /// A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  /// [volumeId] The Volume ID of which to make a snapshot.
  /// [volumeSize] The size of the drive in GiBs.
  SnapshotState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dataEncryptionKeyId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerAlias,
    pulumi.Output<String>? ownerId,
    pulumi.Output<bool>? permanentRestore,
    pulumi.Output<String>? region,
    pulumi.Output<String>? storageTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? temporaryRestoreDays,
    pulumi.Output<String>? volumeId,
    pulumi.Output<int>? volumeSize,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataEncryptionKeyId = pulumi.Input.asOptionalInput<String>(dataEncryptionKeyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerAlias = pulumi.Input.asOptionalInput<String>(ownerAlias),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      permanentRestore = pulumi.Input.asOptionalInput<bool>(permanentRestore),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      temporaryRestoreDays = pulumi.Input.asOptionalInput<int>(temporaryRestoreDays),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId),
      volumeSize = pulumi.Input.asOptionalInput<int>(volumeSize);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataEncryptionKeyId: map['dataEncryptionKeyId'] == null ? null : pulumi.Output.create<String>(map['dataEncryptionKeyId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerAlias: map['ownerAlias'] == null ? null : pulumi.Output.create<String>(map['ownerAlias'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      permanentRestore: map['permanentRestore'] == null ? null : pulumi.Output.create<bool>(map['permanentRestore'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageTier: map['storageTier'] == null ? null : pulumi.Output.create<String>(map['storageTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null ? null : pulumi.Output.create<int>(map['temporaryRestoreDays'] as int),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
      volumeSize: map['volumeSize'] == null ? null : pulumi.Output.create<int>(map['volumeSize'] as int),
    );
  }
}

