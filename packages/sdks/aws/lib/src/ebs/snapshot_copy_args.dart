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
    this.completionDurationMinutes,
    this.description,
    this.encrypted,
    this.kmsKeyId,
    this.permanentRestore,
    this.region,
    required this.sourceRegion,
    required this.sourceSnapshotId,
    this.storageTier,
    this.tags,
    this.temporaryRestoreDays,
  });

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
      completionDurationMinutes: (() {
        final guardedValue = map['completionDurationMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
      sourceRegion: pulumi.Input.fromValue(map['sourceRegion'] as String),
      sourceSnapshotId: pulumi.Input.fromValue(
        map['sourceSnapshotId'] as String,
      ),
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
      temporaryRestoreDays: (() {
        final guardedValue = map['temporaryRestoreDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
