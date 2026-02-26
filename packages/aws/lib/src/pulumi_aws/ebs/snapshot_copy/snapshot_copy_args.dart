// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotCopy.
class SnapshotCopyArgs {
  /// Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  final Input<int>? completionDurationMinutes;

  /// A description of what the snapshot is.
  final Input<String>? description;

  /// Whether the snapshot is encrypted.
  final Input<bool>? encrypted;

  /// The ARN for the KMS encryption key.
  final Input<String>? kmsKeyId;

  /// Indicates whether to permanently restore an archived snapshot.
  final Input<bool>? permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The region of the source snapshot.
  final Input<String> sourceRegion;

  /// The ARN for the snapshot to be copied.
  final Input<String> sourceSnapshotId;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final Input<String>? storageTier;

  /// A map of tags for the snapshot.
  final Input<Map<String, String>>? tags;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final Input<int>? temporaryRestoreDays;

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
    final map = <String, dynamic>{};
    final completionDurationMinutesValue = completionDurationMinutes;
    if (completionDurationMinutesValue != null) {
      map['completionDurationMinutes'] = completionDurationMinutesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final permanentRestoreValue = permanentRestore;
    if (permanentRestoreValue != null) {
      map['permanentRestore'] = permanentRestoreValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceRegion'] = sourceRegion;
    map['sourceSnapshotId'] = sourceSnapshotId;
    final storageTierValue = storageTier;
    if (storageTierValue != null) {
      map['storageTier'] = storageTierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final temporaryRestoreDaysValue = temporaryRestoreDays;
    if (temporaryRestoreDaysValue != null) {
      map['temporaryRestoreDays'] = temporaryRestoreDaysValue;
    }
    return map;
  }

  factory SnapshotCopyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyArgs(
      completionDurationMinutes:
          Input.asOptionalInput<int>(map['completionDurationMinutes']),
      description: Input.asOptionalInput<String>(map['description']),
      encrypted: Input.asOptionalInput<bool>(map['encrypted']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      permanentRestore: Input.asOptionalInput<bool>(map['permanentRestore']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceRegion: Input.asInput<String>(map['sourceRegion']),
      sourceSnapshotId: Input.asInput<String>(map['sourceSnapshotId']),
      storageTier: Input.asOptionalInput<String>(map['storageTier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      temporaryRestoreDays:
          Input.asOptionalInput<int>(map['temporaryRestoreDays']),
    );
  }
}
