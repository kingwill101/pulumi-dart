// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secret_rotation_rotation_rule/get_secret_rotation_rotation_rule.dart';

/// Result data returned by getSecretRotation.
class GetSecretRotationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Specifies whether automatic rotation is enabled for this secret.
  final bool rotationEnabled;

  /// Amazon Resource Name (ARN) of the lambda function used for rotation.
  final String rotationLambdaArn;

  /// Configuration block for rotation rules. See <span pulumi-lang-nodejs="`rotationRules`" pulumi-lang-dotnet="`RotationRules`" pulumi-lang-go="`rotationRules`" pulumi-lang-python="`rotation_rules`" pulumi-lang-yaml="`rotationRules`" pulumi-lang-java="`rotationRules`">`rotation_rules`</span> below.
  final List<GetSecretRotationRotationRule> rotationRules;
  final String secretId;

  GetSecretRotationResult({
    required this.id,
    required this.region,
    required this.rotationEnabled,
    required this.rotationLambdaArn,
    required this.rotationRules,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['rotationEnabled'] = rotationEnabled;
    map['rotationLambdaArn'] = rotationLambdaArn;
    map['rotationRules'] =
        Input.encodeList<GetSecretRotationRotationRule, Map<String, dynamic>>(
            rotationRules, (value) => value.toMap());
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretRotationResult.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationResult(
      id: map['id'] as String,
      region: map['region'] as String,
      rotationEnabled: map['rotationEnabled'] as bool,
      rotationLambdaArn: map['rotationLambdaArn'] as String,
      rotationRules: Input.decodeList<GetSecretRotationRotationRule>(
          map['rotationRules'],
          (value) => GetSecretRotationRotationRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
    );
  }
}
