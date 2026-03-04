// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_versions_version.dart';

/// Result data returned by getSecretVersions.
class GetSecretVersionsResult {
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Kms Secret Version ids.
  final List<String> ids;
  final String? includeDeprecated;
  final String? outputFile;

  /// The name of the secret.
  final String secretName;
  final String? versionStage;

  /// A list of KMS Secret Versions. Each element contains the following attributes:
  final List<GetSecretVersionsVersion> versions;

  /// Creates a new [GetSecretVersionsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Kms Secret Version ids.
  /// [includeDeprecated] Optional.
  /// [outputFile] Optional.
  /// [secretName] The name of the secret.
  /// [versionStage] Optional.
  /// [versions] A list of KMS Secret Versions. Each element contains the following attributes:
  GetSecretVersionsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.includeDeprecated,
    this.outputFile,
    required this.secretName,
    this.versionStage,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'includeDeprecated': ?includeDeprecated,
      'outputFile': ?outputFile,
      'secretName': secretName,
      'versionStage': ?versionStage,
      'versions':
          pulumi.Input.encodeList<
            GetSecretVersionsVersion,
            Map<String, dynamic>
          >(versions, (value) => value.toMap()),
    };
  }

  factory GetSecretVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeDeprecated: (() {
        final guardedValue = map['includeDeprecated'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secretName: map['secretName'] as String,
      versionStage: (() {
        final guardedValue = map['versionStage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      versions: pulumi.Input.decodeList<GetSecretVersionsVersion>(
        map['versions']!,
        (value) => GetSecretVersionsVersion.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
