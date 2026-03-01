// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_snapshot_copy_snapshot_copy_args_doc}
/// The set of arguments for SnapshotCopy.
/// {@endtemplate}
/// {@macro pulumi_ebs_snapshot_copy_snapshot_copy_args_doc}
class SnapshotCopyArgs {
  /// Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  final pulumi.Input<int>? completionDurationMinutes;
  /// A description of what the snapshot is.
  final pulumi.Input<String>? description;
  /// Whether the snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// The ARN for the KMS encryption key.
  final pulumi.Input<String>? kmsKeyId;
  /// Indicates whether to permanently restore an archived snapshot.
  final pulumi.Input<bool>? permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The region of the source snapshot.
  final pulumi.Input<String> sourceRegion;
  /// The ARN for the snapshot to be copied.
  final pulumi.Input<String> sourceSnapshotId;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  final pulumi.Input<String>? storageTier;
  /// A map of tags for the snapshot.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;

  /// Creates a new [SnapshotCopyArgs].
  /// [completionDurationMinutes] Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  /// [description] A description of what the snapshot is.
  /// [encrypted] Whether the snapshot is encrypted.
  /// [kmsKeyId] The ARN for the KMS encryption key.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceRegion] The region of the source snapshot.
  /// [sourceSnapshotId] The ARN for the snapshot to be copied.
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags for the snapshot.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  SnapshotCopyArgs({
    pulumi.Output<int>? completionDurationMinutes,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<bool>? permanentRestore,
    pulumi.Output<String>? region,
    required pulumi.Output<String> sourceRegion,
    required pulumi.Output<String> sourceSnapshotId,
    pulumi.Output<String>? storageTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? temporaryRestoreDays,
  }) :
      completionDurationMinutes = pulumi.Input.asOptionalInput<int>(completionDurationMinutes),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      permanentRestore = pulumi.Input.asOptionalInput<bool>(permanentRestore),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceRegion = pulumi.Input.asInput<String>(sourceRegion),
      sourceSnapshotId = pulumi.Input.asInput<String>(sourceSnapshotId),
      storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      temporaryRestoreDays = pulumi.Input.asOptionalInput<int>(temporaryRestoreDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionDurationMinutes': ?completionDurationMinutes,
      'description': ?description,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'sourceRegion': sourceRegion,
      'sourceSnapshotId': sourceSnapshotId,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'temporaryRestoreDays': ?temporaryRestoreDays,
    };
  }

  factory SnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs(
      completionDurationMinutes: map['completionDurationMinutes'] == null ? null : pulumi.Output.create<int>(map['completionDurationMinutes'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      permanentRestore: map['permanentRestore'] == null ? null : pulumi.Output.create<bool>(map['permanentRestore'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceRegion: pulumi.Output.create<String>(map['sourceRegion'] as String),
      sourceSnapshotId: pulumi.Output.create<String>(map['sourceSnapshotId'] as String),
      storageTier: map['storageTier'] == null ? null : pulumi.Output.create<String>(map['storageTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null ? null : pulumi.Output.create<int>(map['temporaryRestoreDays'] as int),
    );
  }
}

