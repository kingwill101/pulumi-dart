// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_rotation_rotation_rules.dart';

/// Input properties used for looking up and filtering SecretRotation resources.
class SecretRotationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  final pulumi.Input<bool>? rotateImmediately;

  /// Specifies whether automatic rotation is enabled for this secret.
  final pulumi.Input<bool>? rotationEnabled;

  /// Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  final pulumi.Input<String>? rotationLambdaArn;

  /// A structure that defines the rotation configuration for this secret. Defined below.
  final pulumi.Input<SecretRotationRotationRules>? rotationRules;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final pulumi.Input<String>? secretId;

  /// Creates a new [SecretRotationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rotateImmediately] Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  /// [rotationEnabled] Specifies whether automatic rotation is enabled for this secret.
  /// [rotationLambdaArn] Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  /// [rotationRules] A structure that defines the rotation configuration for this secret. Defined below.
  /// [secretId] Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  SecretRotationState({
    this.region,
    this.rotateImmediately,
    this.rotationEnabled,
    this.rotationLambdaArn,
    this.rotationRules,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rotateImmediately': ?rotateImmediately,
      'rotationEnabled': ?rotationEnabled,
      'rotationLambdaArn': ?rotationLambdaArn,
      'rotationRules':
          ?pulumi.Input.mapOptionalInputValue<
            SecretRotationRotationRules,
            Map<String, dynamic>
          >(rotationRules, (value) => value.toMap()),
      'secretId': ?secretId,
    };
  }

  factory SecretRotationState.fromMap(Map<String, dynamic> map) {
    return SecretRotationState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rotateImmediately: (() {
        final guardedValue = map['rotateImmediately'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rotationEnabled: (() {
        final guardedValue = map['rotationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rotationLambdaArn: (() {
        final guardedValue = map['rotationLambdaArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rotationRules: (() {
        final guardedValue = map['rotationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretRotationRotationRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secretId: (() {
        final guardedValue = map['secretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
