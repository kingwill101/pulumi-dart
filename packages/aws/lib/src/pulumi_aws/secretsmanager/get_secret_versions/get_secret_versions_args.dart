// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecretVersions.
class GetSecretVersionsArgs {
  /// If true, all deprecated secret versions are included in the response.
  /// If false, no deprecated secret versions are included in the response. If no value is specified, the default value is `false`.
  final Input<bool>? includeDeprecated;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final Input<String> secretId;

  GetSecretVersionsArgs({
    this.includeDeprecated,
    this.region,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeDeprecatedValue = includeDeprecated;
    if (includeDeprecatedValue != null) {
      map['includeDeprecated'] = includeDeprecatedValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsArgs(
      includeDeprecated: Input.asOptionalInput<bool>(map['includeDeprecated']),
      region: Input.asOptionalInput<String>(map['region']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
