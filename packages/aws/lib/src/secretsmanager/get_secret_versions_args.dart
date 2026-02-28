// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_get_secret_versions_get_secret_versions_args_doc}
/// Arguments for getSecretVersions.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_get_secret_versions_get_secret_versions_args_doc}
class GetSecretVersionsArgs {
  /// If true, all deprecated secret versions are included in the response.
  /// If false, no deprecated secret versions are included in the response. If no value is specified, the default value is `false`.
  final pulumi.Input<bool>? includeDeprecated;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretVersionsArgs].
  /// [includeDeprecated] If true, all deprecated secret versions are included in the response.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  GetSecretVersionsArgs({
    bool? includeDeprecated,
    String? region,
    required String secretId,
  }) :
      includeDeprecated = pulumi.Input.asOptionalInput<bool>(includeDeprecated),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDeprecated': ?includeDeprecated,
      'region': ?region,
      'secretId': secretId,
    };
  }

  factory GetSecretVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsArgs(
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

