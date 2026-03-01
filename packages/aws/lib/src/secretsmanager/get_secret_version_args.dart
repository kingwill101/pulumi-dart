// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_get_secret_version_get_secret_version_args_doc}
/// Arguments for getSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_get_secret_version_get_secret_version_args_doc}
class GetSecretVersionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final pulumi.Input<String> secretId;
  /// Specifies the unique identifier of the version of the secret that you want to retrieve. Overrides `version_stage`.
  final pulumi.Input<String>? versionId;
  /// Specifies the secret version that you want to retrieve by the staging label attached to the version. Defaults to `AWSCURRENT`.
  final pulumi.Input<String>? versionStage;

  /// Creates a new [GetSecretVersionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  /// [versionId] Specifies the unique identifier of the version of the secret that you want to retrieve. Overrides `version_stage`.
  /// [versionStage] Specifies the secret version that you want to retrieve by the staging label attached to the version. Defaults to `AWSCURRENT`.
  GetSecretVersionArgs({
    String? region,
    required String secretId,
    String? versionId,
    String? versionStage,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      secretId = pulumi.Input.asInput<String>(secretId),
      versionId = pulumi.Input.asOptionalInput<String>(versionId),
      versionStage = pulumi.Input.asOptionalInput<String>(versionStage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'secretId': secretId,
      'versionId': ?versionId,
      'versionStage': ?versionStage,
    };
  }

  factory GetSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionArgs(
      region: map['region'] == null ? null : map['region'] as String,
      secretId: map['secretId'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
      versionStage: map['versionStage'] == null ? null : map['versionStage'] as String,
    );
  }
}

