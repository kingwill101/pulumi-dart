// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_rotation_rotation_rule.dart';

/// Result data returned by getSecretRotation.
class GetSecretRotationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Specifies whether automatic rotation is enabled for this secret.
  final bool rotationEnabled;
  /// Amazon Resource Name (ARN) of the lambda function used for rotation.
  final String rotationLambdaArn;
  /// Configuration block for rotation rules. See `rotation_rules` below.
  final List<GetSecretRotationRotationRule> rotationRules;
  final String secretId;

  /// Creates a new [GetSecretRotationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [rotationEnabled] Specifies whether automatic rotation is enabled for this secret.
  /// [rotationLambdaArn] Amazon Resource Name (ARN) of the lambda function used for rotation.
  /// [rotationRules] Configuration block for rotation rules. See `rotation_rules` below.
  /// [secretId] Required.
  const GetSecretRotationResult({
    required this.id,
    required this.region,
    required this.rotationEnabled,
    required this.rotationLambdaArn,
    required this.rotationRules,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      id: map['id'] as String,
      region: map['region'] as String,
      rotationEnabled: map['rotationEnabled'] as bool,
      rotationLambdaArn: map['rotationLambdaArn'] as String,
      rotationRules: pulumi.Input.decodeList<GetSecretRotationRotationRule>(map['rotationRules']!, (value) => GetSecretRotationRotationRule.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
    );
  }
}

