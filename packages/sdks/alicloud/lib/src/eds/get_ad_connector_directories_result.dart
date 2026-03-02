// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ad_connector_directories_directory.dart';

/// Result data returned by getAdConnectorDirectories.
class GetAdConnectorDirectoriesResult {
  final List<GetAdConnectorDirectoriesDirectory> directories;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetAdConnectorDirectoriesResult].
  /// [directories] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetAdConnectorDirectoriesResult({
    required this.directories,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directories': pulumi.Input.encodeList<GetAdConnectorDirectoriesDirectory, Map<String, dynamic>>(directories, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAdConnectorDirectoriesResult.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorDirectoriesResult(
      directories: pulumi.Input.decodeList<GetAdConnectorDirectoriesDirectory>(map['directories'], (value) => GetAdConnectorDirectoriesDirectory.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

