// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_snapshots_get_ecs_snapshots_args_doc}
/// Arguments for getEcsSnapshots.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_snapshots_get_ecs_snapshots_args_doc}
class GetEcsSnapshotsArgs {
  /// The category of the snapshot. Valid Values: `flash` and `standard`.
  final pulumi.Input<String>? category;

  /// Specifies whether to check the validity of the request without actually making the request.
  final pulumi.Input<bool>? dryRun;

  /// Specifies whether the snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;

  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;

  /// The kms key id.
  final pulumi.Input<String>? kmsKeyId;

  /// A regex string to filter results by Snapshot name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;

  /// The snapshot link id.
  final pulumi.Input<String>? snapshotLinkId;

  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;

  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String>? snapshotType;

  /// The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  final pulumi.Input<String>? sourceDiskType;

  /// The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  final pulumi.Input<String>? status;

  /// A mapping of tags to assign to the snapshot.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String>? type;

  /// A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String>? usage;

  /// Creates a new [GetEcsSnapshotsArgs].
  /// [category] The category of the snapshot. Valid Values: `flash` and `standard`.
  /// [dryRun] Specifies whether to check the validity of the request without actually making the request.
  /// [encrypted] Specifies whether the snapshot is encrypted.
  /// [ids] A list of Snapshot IDs.
  /// [kmsKeyId] The kms key id.
  /// [nameRegex] A regex string to filter results by Snapshot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The resource group id.
  /// [snapshotLinkId] The snapshot link id.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotType] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [sourceDiskType] The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  /// [status] The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  /// [tags] A mapping of tags to assign to the snapshot.
  /// [type] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [usage] A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  GetEcsSnapshotsArgs({
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

  factory GetEcsSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotsArgs(
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
