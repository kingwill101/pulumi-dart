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
    String? fileSystemId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? snapshotName,
    String? status,
  }) :
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      snapshotName: map['snapshotName'] == null ? null : map['snapshotName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

