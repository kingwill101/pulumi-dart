// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_systems_system.dart';

/// Result data returned by getFileSystems.
class GetFileSystemsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetFileSystemsSystem> systems;

  /// Creates a new [GetFileSystemsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [systems] Required.
  GetFileSystemsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.systems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'systems': pulumi.Input.encodeList<GetFileSystemsSystem, Map<String, dynamic>>(systems, (value) => value.toMap()),
    };
  }

  factory GetFileSystemsResult.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systems: pulumi.Input.decodeList<GetFileSystemsSystem>(map['systems']!, (value) => GetFileSystemsSystem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

