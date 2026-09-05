// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_rotation_external_secret_rotation_metadata.dart';
import 'get_secret_rotation_rotation_rule.dart';

/// Result data returned by getSecretRotation.
class GetSecretRotationResult {
  /// Metadata required by the external secret partner. See `externalSecretRotationMetadata` below.
  final List<GetSecretRotationExternalSecretRotationMetadata>? externalSecretRotationMetadatas;
  /// ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner.
  final String? externalSecretRotationRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Whether automatic rotation is enabled for this secret.
  final bool? rotationEnabled;
  /// ARN of the lambda function used for rotation.
  final String? rotationLambdaArn;
  /// Configuration block for rotation rules. See `rotationRules` below.
  final List<GetSecretRotationRotationRule>? rotationRules;
  final String? secretId;

  /// Creates a new [GetSecretRotationResult].
  /// [externalSecretRotationMetadatas] Metadata required by the external secret partner. See `externalSecretRotationMetadata` below.
  /// [externalSecretRotationRoleArn] ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [rotationEnabled] Whether automatic rotation is enabled for this secret.
  /// [rotationLambdaArn] ARN of the lambda function used for rotation.
  /// [rotationRules] Configuration block for rotation rules. See `rotationRules` below.
  /// [secretId] Optional.
  const GetSecretRotationResult({
    this.externalSecretRotationMetadatas,
    this.externalSecretRotationRoleArn,
    this.id,
    this.region,
    this.rotationEnabled,
    this.rotationLambdaArn,
    this.rotationRules,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalSecretRotationMetadatas': ?(() { final guardedValue = externalSecretRotationMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretRotationExternalSecretRotationMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'externalSecretRotationRoleArn': ?externalSecretRotationRoleArn,
      'id': ?id,
      'region': ?region,
      'rotationEnabled': ?rotationEnabled,
      'rotationLambdaArn': ?rotationLambdaArn,
      'rotationRules': ?(() { final guardedValue = rotationRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretRotationRotationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretId': ?secretId,
    };
  }

  factory GetSecretRotationResult.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationResult(
      externalSecretRotationMetadatas: (() { final guardedValue = map['externalSecretRotationMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretRotationExternalSecretRotationMetadata>(guardedValue, (value) => GetSecretRotationExternalSecretRotationMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      externalSecretRotationRoleArn: (() { final guardedValue = map['externalSecretRotationRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rotationEnabled: (() { final guardedValue = map['rotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      rotationLambdaArn: (() { final guardedValue = map['rotationLambdaArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rotationRules: (() { final guardedValue = map['rotationRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretRotationRotationRule>(guardedValue, (value) => GetSecretRotationRotationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
