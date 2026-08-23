// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_get_secret_rotation_get_secret_rotation_args_doc}
/// Arguments for getSecretRotation.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_get_secret_rotation_get_secret_rotation_args_doc}
class GetSecretRotationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretRotationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] Secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  const GetSecretRotationArgs({
    this.region,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'secretId': secretId,
    };
  }

  factory GetSecretRotationArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
