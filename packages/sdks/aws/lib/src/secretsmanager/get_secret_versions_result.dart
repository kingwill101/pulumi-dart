// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_versions_version.dart';

/// Result data returned by getSecretVersions.
class GetSecretVersionsResult {
  /// (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  final String? arn;
  final bool? includeDeprecated;
  /// (**Deprecated**) Name of the secret. Use `secretName` instead.
  final String? name;
  final String? region;
  /// ARN of the secret.
  final String? secretArn;
  final String? secretId;
  /// Name of the secret.
  final String? secretName;
  /// List of the versions of the secret. Attributes are specified below.
  final List<GetSecretVersionsVersion>? versions;

  /// Creates a new [GetSecretVersionsResult].
  /// [arn] (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  /// [includeDeprecated] Optional.
  /// [name] (**Deprecated**) Name of the secret. Use `secretName` instead.
  /// [region] Optional.
  /// [secretArn] ARN of the secret.
  /// [secretId] Optional.
  /// [secretName] Name of the secret.
  /// [versions] List of the versions of the secret. Attributes are specified below.
  const GetSecretVersionsResult({
    this.arn,
    this.includeDeprecated,
    this.name,
    this.region,
    this.secretArn,
    this.secretId,
    this.secretName,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'includeDeprecated': ?includeDeprecated,
      'name': ?name,
      'region': ?region,
      'secretArn': ?secretArn,
      'secretId': ?secretId,
      'secretName': ?secretName,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretVersionsVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretVersionsVersion>(guardedValue, (value) => GetSecretVersionsVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
