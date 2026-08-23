// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_rotation_external_secret_rotation_metadata.dart';
import 'get_secret_rotation_rotation_rule.dart';

/// Result data returned by getSecretRotation.
class GetSecretRotationResult {
  /// Metadata required by the external secret partner. See `externalSecretRotationMetadata` below.
  final List<GetSecretRotationExternalSecretRotationMetadata> externalSecretRotationMetadatas;
  /// ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner.
  final String externalSecretRotationRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Whether automatic rotation is enabled for this secret.
  final bool rotationEnabled;
  /// Amazon Resource Name (ARN) of the lambda function used for rotation.
  final String rotationLambdaArn;
  /// Configuration block for rotation rules. See `rotationRules` below.
  final List<GetSecretRotationRotationRule> rotationRules;
  final String secretId;

  /// Creates a new [GetSecretRotationResult].
  /// [externalSecretRotationMetadatas] Metadata required by the external secret partner. See `externalSecretRotationMetadata` below.
  /// [externalSecretRotationRoleArn] ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [rotationEnabled] Whether automatic rotation is enabled for this secret.
  /// [rotationLambdaArn] Amazon Resource Name (ARN) of the lambda function used for rotation.
  /// [rotationRules] Configuration block for rotation rules. See `rotationRules` below.
  /// [secretId] Required.
  const GetSecretRotationResult({
    required this.externalSecretRotationMetadatas,
    required this.externalSecretRotationRoleArn,
    required this.id,
    required this.region,
    required this.rotationEnabled,
    required this.rotationLambdaArn,
    required this.rotationRules,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalSecretRotationMetadatas': pulumi.Input.encodeList<GetSecretRotationExternalSecretRotationMetadata, Map<String, dynamic>>(externalSecretRotationMetadatas, (value) => value.toMap()),
      'externalSecretRotationRoleArn': externalSecretRotationRoleArn,
      'id': id,
      'region': region,
      'rotationEnabled': rotationEnabled,
      'rotationLambdaArn': rotationLambdaArn,
      'rotationRules': pulumi.Input.encodeList<GetSecretRotationRotationRule, Map<String, dynamic>>(rotationRules, (value) => value.toMap()),
      'secretId': secretId,
    };
  }

  factory GetSecretRotationResult.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationResult(
      externalSecretRotationMetadatas: pulumi.Input.decodeList<GetSecretRotationExternalSecretRotationMetadata>(map['externalSecretRotationMetadatas']!, (value) => GetSecretRotationExternalSecretRotationMetadata.fromMap((value as Map).cast<String, dynamic>())),
      externalSecretRotationRoleArn: map['externalSecretRotationRoleArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      rotationEnabled: map['rotationEnabled'] as bool,
      rotationLambdaArn: map['rotationLambdaArn'] as String,
      rotationRules: pulumi.Input.decodeList<GetSecretRotationRotationRule>(map['rotationRules']!, (value) => GetSecretRotationRotationRule.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
    );
  }
}
