// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../secret_rotation_rotation_rules/secret_rotation_rotation_rules.dart';

/// The set of arguments for SecretRotation.
class SecretRotationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  final Input<bool>? rotateImmediately;

  /// Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  final Input<String>? rotationLambdaArn;

  /// A structure that defines the rotation configuration for this secret. Defined below.
  final Input<SecretRotationRotationRules> rotationRules;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final Input<String> secretId;

  SecretRotationArgs({
    this.region,
    this.rotateImmediately,
    this.rotationLambdaArn,
    required this.rotationRules,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rotateImmediatelyValue = rotateImmediately;
    if (rotateImmediatelyValue != null) {
      map['rotateImmediately'] = rotateImmediatelyValue;
    }
    final rotationLambdaArnValue = rotationLambdaArn;
    if (rotationLambdaArnValue != null) {
      map['rotationLambdaArn'] = rotationLambdaArnValue;
    }
    map['rotationRules'] =
        Input.mapInputValue<SecretRotationRotationRules, Map<String, dynamic>>(
            rotationRules, (value) => value.toMap());
    map['secretId'] = secretId;
    return map;
  }

  factory SecretRotationArgs.fromMap(Map<String, dynamic> map) {
    return SecretRotationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      rotateImmediately: Input.asOptionalInput<bool>(map['rotateImmediately']),
      rotationLambdaArn:
          Input.asOptionalInput<String>(map['rotationLambdaArn']),
      rotationRules:
          Input.asInput<SecretRotationRotationRules>(map['rotationRules']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
