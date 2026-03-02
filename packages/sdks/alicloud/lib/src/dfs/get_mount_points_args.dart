// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_get_mount_points_get_mount_points_args_doc}
/// Arguments for getMountPoints.
/// {@endtemplate}
/// {@macro pulumi_dfs_get_mount_points_get_mount_points_args_doc}
class GetMountPointsArgs {
  /// The ID of the File System.
  final pulumi.Input<String> fileSystemId;
  /// A list of Mount Point IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Mount Point. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetMountPointsArgs].
  /// [fileSystemId] The ID of the File System.
  /// [ids] A list of Mount Point IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Mount Point. Valid values: `Active`, `Inactive`.
  GetMountPointsArgs({
    required this.fileSystemId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetMountPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetMountPointsArgs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

