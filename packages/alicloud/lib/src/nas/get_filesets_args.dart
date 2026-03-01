// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_filesets_get_filesets_args_doc}
/// Arguments for getFilesets.
/// {@endtemplate}
/// {@macro pulumi_nas_get_filesets_get_filesets_args_doc}
class GetFilesetsArgs {
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// A list of Fileset IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the fileset. Valid values: `CREATED`, `CREATING`, `RELEASED`, `RELEASING`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetFilesetsArgs].
  /// [fileSystemId] The ID of the file system.
  /// [ids] A list of Fileset IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the fileset. Valid values: `CREATED`, `CREATING`, `RELEASED`, `RELEASING`.
  GetFilesetsArgs({
    required String fileSystemId,
    List<String>? ids,
    String? outputFile,
    String? status,
  }) :
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetFilesetsArgs.fromMap(Map<String, dynamic> map) {
    return GetFilesetsArgs(
      fileSystemId: map['fileSystemId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

