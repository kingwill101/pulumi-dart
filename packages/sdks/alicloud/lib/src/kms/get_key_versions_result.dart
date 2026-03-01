// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_versions_version.dart';

/// Result data returned by getKeyVersions.
class GetKeyVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of KMS KeyVersion IDs.
  final List<String> ids;
  /// ID of the key.
  final String keyId;
  final String? outputFile;
  /// A list of KMS KeyVersions. Each element contains the following attributes:
  final List<GetKeyVersionsVersion> versions;

  /// Creates a new [GetKeyVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of KMS KeyVersion IDs.
  /// [keyId] ID of the key.
  /// [outputFile] Optional.
  /// [versions] A list of KMS KeyVersions. Each element contains the following attributes:
  GetKeyVersionsResult({
    required this.id,
    required this.ids,
    required this.keyId,
    this.outputFile,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyId': keyId,
      'outputFile': ?outputFile,
      'versions': pulumi.Input.encodeList<GetKeyVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetKeyVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyVersionsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyId: map['keyId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      versions: pulumi.Input.decodeList<GetKeyVersionsVersion>(map['versions'], (value) => GetKeyVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

