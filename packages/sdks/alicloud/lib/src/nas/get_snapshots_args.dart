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
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

