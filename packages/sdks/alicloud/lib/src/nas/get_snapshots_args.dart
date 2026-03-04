// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_nas_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;

  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Snapshot name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;

  /// Status. Valid values: `accomplished`, `failed`, `progressing`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSnapshotsArgs].
  /// [fileSystemId] The ID of the file system.
  /// [ids] A list of Snapshot IDs.
  /// [nameRegex] A regex string to filter results by Snapshot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [snapshotName] The name of the snapshot.
  /// [status] Status. Valid values: `accomplished`, `failed`, `progressing`.
  GetSnapshotsArgs({
    this.fileSystemId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.snapshotName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'snapshotName': ?snapshotName,
      'status': ?status,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
