// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_response.dart';

/// Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.
class FileHashesResponse {
  /// Collection of file hashes.
  final List<HashResponse> fileHash;

  /// Creates a new [FileHashesResponse].
  /// [fileHash] Collection of file hashes.
  FileHashesResponse({
    required this.fileHash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileHash'] =
        pulumi.Input.encodeList<HashResponse, Map<String, dynamic>>(
            fileHash, (value) => value.toMap());
    return map;
  }

  factory FileHashesResponse.fromMap(Map<String, dynamic> map) {
    return FileHashesResponse(
      fileHash: pulumi.Input.decodeList<HashResponse>(
          map['fileHash'],
          (value) =>
              HashResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
