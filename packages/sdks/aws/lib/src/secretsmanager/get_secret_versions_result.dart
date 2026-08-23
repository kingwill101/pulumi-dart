// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_versions_version.dart';

/// Result data returned by getSecretVersions.
class GetSecretVersionsResult {
  /// (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  final String arn;
  final bool? includeDeprecated;
  /// (**Deprecated**) Name of the secret. Use `secretName` instead.
  final String name;
  final String region;
  /// ARN of the secret.
  final String secretArn;
  final String secretId;
  /// Name of the secret.
  final String secretName;
  /// List of the versions of the secret. Attributes are specified below.
  final List<GetSecretVersionsVersion> versions;

  /// Creates a new [GetSecretVersionsResult].
  /// [arn] (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  /// [includeDeprecated] Optional.
  /// [name] (**Deprecated**) Name of the secret. Use `secretName` instead.
  /// [region] Required.
  /// [secretArn] ARN of the secret.
  /// [secretId] Required.
  /// [secretName] Name of the secret.
  /// [versions] List of the versions of the secret. Attributes are specified below.
  const GetSecretVersionsResult({
    required this.arn,
    this.includeDeprecated,
    required this.name,
    required this.region,
    required this.secretArn,
    required this.secretId,
    required this.secretName,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'includeDeprecated': ?includeDeprecated,
      'name': name,
      'region': region,
      'secretArn': secretArn,
      'secretId': secretId,
      'secretName': secretName,
      'versions': pulumi.Input.encodeList<GetSecretVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetSecretVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsResult(
      arn: map['arn'] as String,
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      region: map['region'] as String,
      secretArn: map['secretArn'] as String,
      secretId: map['secretId'] as String,
      secretName: map['secretName'] as String,
      versions: pulumi.Input.decodeList<GetSecretVersionsVersion>(map['versions']!, (value) => GetSecretVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
