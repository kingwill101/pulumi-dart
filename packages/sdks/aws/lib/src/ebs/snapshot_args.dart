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
    this.description,
    this.outpostArn,
    this.permanentRestore,
    this.region,
    this.storageTier,
    this.tags,
    this.temporaryRestoreDays,
    required this.volumeId,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outpostArn: (() {
        final guardedValue = map['outpostArn'];
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
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
