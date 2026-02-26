// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secret_versions_version/get_secret_versions_version.dart';

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

  GetSecretVersionsResult({
    required this.arn,
    required this.id,
    this.includeDeprecated,
    required this.name,
    required this.region,
    required this.secretId,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    final includeDeprecatedValue = includeDeprecated;
    if (includeDeprecatedValue != null) {
      map['includeDeprecated'] = includeDeprecatedValue;
    }
    map['name'] = name;
    map['region'] = region;
    map['secretId'] = secretId;
    map['versions'] =
        Input.encodeList<GetSecretVersionsVersion, Map<String, dynamic>>(
            versions, (value) => value.toMap());
    return map;
  }

  factory GetSecretVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      includeDeprecated: map['includeDeprecated'] == null
          ? null
          : map['includeDeprecated'] as bool,
      name: map['name'] as String,
      region: map['region'] as String,
      secretId: map['secretId'] as String,
      versions: Input.decodeList<GetSecretVersionsVersion>(
          map['versions'],
          (value) => GetSecretVersionsVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
