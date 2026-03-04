// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nas_file_systems_system.dart';

/// Result data returned by getNasFileSystems.
class GetNasFileSystemsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? officeSiteId;
  final String? outputFile;
  final String? status;
  final List<GetNasFileSystemsSystem> systems;

  /// Creates a new [GetNasFileSystemsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [officeSiteId] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [systems] Required.
  GetNasFileSystemsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.officeSiteId,
    this.outputFile,
    this.status,
    required this.systems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'officeSiteId': ?officeSiteId,
      'outputFile': ?outputFile,
      'status': ?status,
      'systems':
          pulumi.Input.encodeList<
            GetNasFileSystemsSystem,
            Map<String, dynamic>
          >(systems, (value) => value.toMap()),
    };
  }

  factory GetNasFileSystemsResult.fromMap(Map<String, dynamic> map) {
    return GetNasFileSystemsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      officeSiteId: (() {
        final guardedValue = map['officeSiteId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systems: pulumi.Input.decodeList<GetNasFileSystemsSystem>(
        map['systems']!,
        (value) => GetNasFileSystemsSystem.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
