// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_directories_directory.dart';

/// Result data returned by getResourceDirectories.
class GetResourceDirectoriesResult {
  /// A list of resource directories. Each element contains the following attributes:
  final List<GetResourceDirectoriesDirectory> directories;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// Creates a new [GetResourceDirectoriesResult].
  /// [directories] A list of resource directories. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  const GetResourceDirectoriesResult({
    required this.directories,
    required this.id,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directories': pulumi.Input.encodeList<GetResourceDirectoriesDirectory, Map<String, dynamic>>(directories, (value) => value.toMap()),
      'id': id,
      'outputFile': ?outputFile,
    };
  }

  factory GetResourceDirectoriesResult.fromMap(Map<String, dynamic> map) {
    return GetResourceDirectoriesResult(
      directories: pulumi.Input.decodeList<GetResourceDirectoriesDirectory>(map['directories']!, (value) => GetResourceDirectoriesDirectory.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

