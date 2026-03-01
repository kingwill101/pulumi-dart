// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_ebs_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// A description of what the snapshot is.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  final pulumi.Input<String>? outpostArn;
  /// Indicates whether to permanently restore an archived snapshot.
  final pulumi.Input<bool>? permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  final pulumi.Input<String>? storageTier;
  /// A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;
  /// The Volume ID of which to make a snapshot.
  final pulumi.Input<String> volumeId;

  /// Creates a new [SnapshotArgs].
  /// [description] A description of what the snapshot is.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags to assign to the snapshot. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  /// [volumeId] The Volume ID of which to make a snapshot.
  SnapshotArgs({
    String? description,
    String? outpostArn,
    bool? permanentRestore,
    String? region,
    String? storageTier,
    Map<String, String>? tags,
    int? temporaryRestoreDays,
    required String volumeId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      permanentRestore = pulumi.Input.asOptionalInput<bool>(permanentRestore),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      temporaryRestoreDays = pulumi.Input.asOptionalInput<int>(temporaryRestoreDays),
      volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'outpostArn': ?outpostArn,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'temporaryRestoreDays': ?temporaryRestoreDays,
      'volumeId': volumeId,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null ? null : map['description'] as String,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      permanentRestore: map['permanentRestore'] == null ? null : map['permanentRestore'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      storageTier: map['storageTier'] == null ? null : map['storageTier'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null ? null : map['temporaryRestoreDays'] as int,
      volumeId: map['volumeId'] as String,
    );
  }
}

