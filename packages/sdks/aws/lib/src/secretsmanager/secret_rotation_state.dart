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
    pulumi.Output<String>? region,
    pulumi.Output<bool>? rotateImmediately,
    pulumi.Output<bool>? rotationEnabled,
    pulumi.Output<String>? rotationLambdaArn,
    pulumi.Output<SecretRotationRotationRules>? rotationRules,
    pulumi.Output<String>? secretId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      rotateImmediately = pulumi.Input.asOptionalInput<bool>(rotateImmediately),
      rotationEnabled = pulumi.Input.asOptionalInput<bool>(rotationEnabled),
      rotationLambdaArn = pulumi.Input.asOptionalInput<String>(rotationLambdaArn),
      rotationRules = pulumi.Input.asOptionalInput<SecretRotationRotationRules>(rotationRules),
      secretId = pulumi.Input.asOptionalInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rotateImmediately': ?rotateImmediately,
      'rotationEnabled': ?rotationEnabled,
      'rotationLambdaArn': ?rotationLambdaArn,
      'rotationRules': ?pulumi.Input.mapOptionalInputValue<SecretRotationRotationRules, Map<String, dynamic>>(rotationRules, (value) => value.toMap()),
      'secretId': ?secretId,
    };
  }

  factory SecretRotationState.fromMap(Map<String, dynamic> map) {
    return SecretRotationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rotateImmediately: map['rotateImmediately'] == null ? null : pulumi.Output.create<bool>(map['rotateImmediately'] as bool),
      rotationEnabled: map['rotationEnabled'] == null ? null : pulumi.Output.create<bool>(map['rotationEnabled'] as bool),
      rotationLambdaArn: map['rotationLambdaArn'] == null ? null : pulumi.Output.create<String>(map['rotationLambdaArn'] as String),
      rotationRules: map['rotationRules'] == null ? null : pulumi.Output.create<SecretRotationRotationRules>(SecretRotationRotationRules.fromMap((map['rotationRules'] as Map).cast<String, dynamic>())),
      secretId: map['secretId'] == null ? null : pulumi.Output.create<String>(map['secretId'] as String),
    );
  }
}

