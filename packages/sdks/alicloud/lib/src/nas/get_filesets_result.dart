// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_filesets_fileset.dart';

/// Result data returned by getFilesets.
class GetFilesetsResult {
  final String fileSystemId;
  final List<GetFilesetsFileset> filesets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetFilesetsResult].
  /// [fileSystemId] Required.
  /// [filesets] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetFilesetsResult({
    required this.fileSystemId,
    required this.filesets,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'filesets': pulumi.Input.encodeList<GetFilesetsFileset, Map<String, dynamic>>(filesets, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetFilesetsResult.fromMap(Map<String, dynamic> map) {
    return GetFilesetsResult(
      fileSystemId: map['fileSystemId'] as String,
      filesets: pulumi.Input.decodeList<GetFilesetsFileset>(map['filesets']!, (value) => GetFilesetsFileset.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

