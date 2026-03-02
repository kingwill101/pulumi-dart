// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_version.dart';

/// Result data returned by getVersions.
class GetVersionsResult {
  final String? edition;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetVersionsVersion> versions;

  /// Creates a new [GetVersionsResult].
  /// [edition] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [versions] Required.
  GetVersionsResult({
    this.edition,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'versions': pulumi.Input.encodeList<GetVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetVersionsResult(
      edition: map['edition'] == null ? null : map['edition']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      versions: pulumi.Input.decodeList<GetVersionsVersion>(map['versions'], (value) => GetVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

