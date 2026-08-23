// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_get_secret_versions_get_secret_versions_args_doc}
/// Arguments for getSecretVersions.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_get_secret_versions_get_secret_versions_args_doc}
class GetSecretVersionsArgs {
  /// If true, all deprecated secret versions are included in the response. If false, no deprecated secret versions are included in the response. If no value is specified, the default value is `false`.
  final pulumi.Input<bool>? includeDeprecated;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretVersionsArgs].
  /// [includeDeprecated] If true, all deprecated secret versions are included in the response. If false, no deprecated secret versions are included in the response. If no value is specified, the default value is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] Secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  const GetSecretVersionsArgs({
    this.includeDeprecated,
    this.region,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDeprecated': ?includeDeprecated,
      'region': ?region,
      'secretId': secretId,
    };
  }

  factory GetSecretVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsArgs(
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
