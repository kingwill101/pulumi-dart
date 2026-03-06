// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_versions_version.dart';

/// Result data returned by getSecretVersions.
class GetSecretVersionsResult {
  /// ARN of the secret.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeDeprecated;
  final String name;
  final String region;
  final String secretId;
  /// List of the versions of the secret. Attributes are specified below.
  final List<GetSecretVersionsVersion> versions;

  /// Creates a new [GetSecretVersionsResult].
  /// [arn] ARN of the secret.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeDeprecated] Optional.
  /// [name] Required.
  /// [region] Required.
  /// [secretId] Required.
  /// [versions] List of the versions of the secret. Attributes are specified below.
  const GetSecretVersionsResult({
    required this.arn,
    required this.id,
    this.includeDeprecated,
    required this.name,
    required this.region,
    required this.secretId,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'includeDeprecated': ?includeDeprecated,
      'name': name,
      'region': region,
      'secretId': secretId,
      'versions': pulumi.Input.encodeList<GetSecretVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetSecretVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      region: map['region'] as String,
      secretId: map['secretId'] as String,
      versions: pulumi.Input.decodeList<GetSecretVersionsVersion>(map['versions']!, (value) => GetSecretVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

