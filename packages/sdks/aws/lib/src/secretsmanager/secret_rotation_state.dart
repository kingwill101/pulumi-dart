// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_rotation_external_secret_rotation_metadata.dart';
import 'secret_rotation_rotation_rules.dart';

/// Input properties used for looking up and filtering SecretRotation resources.
class SecretRotationState {
  /// Configuration block for metadata required by the external secret partner. Required for managed external secrets. See details below.
  final pulumi.Input<List<SecretRotationExternalSecretRotationMetadata>?>? externalSecretRotationMetadatas;
  /// ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner. Required for managed external secrets.
  final pulumi.Input<String?>? externalSecretRotationRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotationRules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  final pulumi.Input<bool?>? rotateImmediately;
  /// Whether automatic rotation is enabled for the secret. Set to `false` to disable rotation on a secret whose rotation is otherwise managed by AWS (for example, an RDS master user password secret). When `false`, `rotationRules` must be omitted. Defaults to enabled when `rotationRules` is configured. Destroying this resource does not re-enable the automatic rotation that AWS configured.
  final pulumi.Input<bool?>? rotationEnabled;
  /// ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  final pulumi.Input<String?>? rotationLambdaArn;
  /// Structure that defines the rotation configuration for this secret. Required unless `rotationEnabled` is `false`. Defined below.
  final pulumi.Input<SecretRotationRotationRules?>? rotationRules;
  /// Secret to which you want to add a new version. You can specify either the ARN or the friendly name of the secret. The secret must already exist.
  final pulumi.Input<String?>? secretId;

  /// Creates a new [SecretRotationState].
  /// [externalSecretRotationMetadatas] Configuration block for metadata required by the external secret partner. Required for managed external secrets. See details below.
  /// [externalSecretRotationRoleArn] ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner. Required for managed external secrets.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rotateImmediately] Whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotationRules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  /// [rotationEnabled] Whether automatic rotation is enabled for the secret. Set to `false` to disable rotation on a secret whose rotation is otherwise managed by AWS (for example, an RDS master user password secret). When `false`, `rotationRules` must be omitted. Defaults to enabled when `rotationRules` is configured. Destroying this resource does not re-enable the automatic rotation that AWS configured.
  /// [rotationLambdaArn] ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  /// [rotationRules] Structure that defines the rotation configuration for this secret. Required unless `rotationEnabled` is `false`. Defined below.
  /// [secretId] Secret to which you want to add a new version. You can specify either the ARN or the friendly name of the secret. The secret must already exist.
  const SecretRotationState({
    this.externalSecretRotationMetadatas,
    this.externalSecretRotationRoleArn,
    this.region,
    this.rotateImmediately,
    this.rotationEnabled,
    this.rotationLambdaArn,
    this.rotationRules,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalSecretRotationMetadatas': ?pulumi.Input.mapOptionalInputValue<List<SecretRotationExternalSecretRotationMetadata>, List<Map<String, dynamic>>>(externalSecretRotationMetadatas, (value) => pulumi.Input.encodeList<SecretRotationExternalSecretRotationMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalSecretRotationRoleArn': ?externalSecretRotationRoleArn,
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
      externalSecretRotationMetadatas: (() { final guardedValue = map['externalSecretRotationMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretRotationExternalSecretRotationMetadata>(guardedValue, (value) => SecretRotationExternalSecretRotationMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      externalSecretRotationRoleArn: (() { final guardedValue = map['externalSecretRotationRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotateImmediately: (() { final guardedValue = map['rotateImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rotationEnabled: (() { final guardedValue = map['rotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rotationLambdaArn: (() { final guardedValue = map['rotationLambdaArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotationRules: (() { final guardedValue = map['rotationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretRotationRotationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
