// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_rotation_rotation_rules.dart';

/// {@template pulumi_secretsmanager_secret_rotation_secret_rotation_args_doc}
/// The set of arguments for SecretRotation.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_secret_rotation_secret_rotation_args_doc}
class SecretRotationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  final pulumi.Input<bool>? rotateImmediately;
  /// Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  final pulumi.Input<String>? rotationLambdaArn;
  /// A structure that defines the rotation configuration for this secret. Defined below.
  final pulumi.Input<SecretRotationRotationRules> rotationRules;
  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final pulumi.Input<String> secretId;

  /// Creates a new [SecretRotationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rotateImmediately] Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  /// [rotationLambdaArn] Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  /// [rotationRules] A structure that defines the rotation configuration for this secret. Defined below.
  /// [secretId] Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  SecretRotationArgs({
    this.region,
    this.rotateImmediately,
    this.rotationLambdaArn,
    required this.rotationRules,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rotateImmediately': ?rotateImmediately,
      'rotationLambdaArn': ?rotationLambdaArn,
      'rotationRules': pulumi.Input.mapInputValue<SecretRotationRotationRules, Map<String, dynamic>>(rotationRules, (value) => value.toMap()),
      'secretId': secretId,
    };
  }

  factory SecretRotationArgs.fromMap(Map<String, dynamic> map) {
    return SecretRotationArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rotateImmediately: map['rotateImmediately'] == null ? null : (map['rotateImmediately'] as bool).input(),
      rotationLambdaArn: map['rotationLambdaArn'] == null ? null : (map['rotationLambdaArn'] as String).input(),
      rotationRules: (SecretRotationRotationRules.fromMap((map['rotationRules'] as Map).cast<String, dynamic>())).input(),
      secretId: (map['secretId'] as String).input(),
    );
  }
}

