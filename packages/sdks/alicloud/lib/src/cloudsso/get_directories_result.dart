// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directories_directory.dart';

/// Result data returned by getDirectories.
class GetDirectoriesResult {
  final List<GetDirectoriesDirectory> directories;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDirectoriesResult].
  /// [directories] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetDirectoriesResult({
    required this.directories,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directories': pulumi.Input.encodeList<GetDirectoriesDirectory, Map<String, dynamic>>(directories, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDirectoriesResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoriesResult(
      directories: pulumi.Input.decodeList<GetDirectoriesDirectory>(map['directories'], (value) => GetDirectoriesDirectory.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

