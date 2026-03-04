// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  final pulumi.Input<String>? category;
  final pulumi.Input<bool>? dryRun;

  /// Whether the snapshot is encrypted or not.
  final pulumi.Input<bool>? encrypted;

  /// A list of snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? snapshotLinkId;
  final pulumi.Input<String>? snapshotName;
  final pulumi.Input<String>? snapshotType;

  /// Source disk attribute. Value range: `System`,`Data`.
  final pulumi.Input<String>? sourceDiskType;

  /// The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  final pulumi.Input<String>? status;

  /// A map of tags assigned to the snapshot.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;

  /// Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String>? usage;

  /// Creates a new [GetSnapshotsArgs].
  /// [category] Optional.
  /// [dryRun] Optional.
  /// [encrypted] Whether the snapshot is encrypted or not.
  /// [ids] A list of snapshot IDs.
  /// [kmsKeyId] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [snapshotLinkId] Optional.
  /// [snapshotName] Optional.
  /// [snapshotType] Optional.
  /// [sourceDiskType] Source disk attribute. Value range: `System`,`Data`.
  /// [status] The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  /// [tags] A map of tags assigned to the snapshot.
  /// [type] Optional.
  /// [usage] Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  GetSnapshotsArgs({
    this.category,
    this.dryRun,
    this.encrypted,
    this.ids,
    this.kmsKeyId,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.snapshotLinkId,
    this.snapshotName,
    this.snapshotType,
    this.sourceDiskType,
    this.status,
    this.tags,
    this.type,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dryRun': ?dryRun,
      'encrypted': ?encrypted,
      'ids': ?ids,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'snapshotLinkId': ?snapshotLinkId,
      'snapshotName': ?snapshotName,
      'snapshotType': ?snapshotType,
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usage': ?usage,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotLinkId: (() {
        final guardedValue = map['snapshotLinkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotType: (() {
        final guardedValue = map['snapshotType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDiskType: (() {
        final guardedValue = map['sourceDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
