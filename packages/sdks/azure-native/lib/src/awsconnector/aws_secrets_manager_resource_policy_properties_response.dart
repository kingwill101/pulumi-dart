// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsSecretsManagerResourcePolicy
class AwsSecretsManagerResourcePolicyPropertiesResponse {
  /// Property blockPublicPolicy
  final pulumi.Input<bool>? blockPublicPolicy;
  /// Property id
  final pulumi.Input<String>? id;
  /// Property resourcePolicy
  final pulumi.Input<dynamic>? resourcePolicy;
  /// Property secretId
  final pulumi.Input<String>? secretId;

  /// Creates a new [AwsSecretsManagerResourcePolicyPropertiesResponse].
  /// [blockPublicPolicy] Property blockPublicPolicy
  /// [id] Property id
  /// [resourcePolicy] Property resourcePolicy
  /// [secretId] Property secretId
  const AwsSecretsManagerResourcePolicyPropertiesResponse({
    this.blockPublicPolicy,
    this.id,
    this.resourcePolicy,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicPolicy': ?blockPublicPolicy,
      'id': ?id,
      'resourcePolicy': ?resourcePolicy,
      'secretId': ?secretId,
    };
  }

  factory AwsSecretsManagerResourcePolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSecretsManagerResourcePolicyPropertiesResponse(
      blockPublicPolicy: (() { final guardedValue = map['blockPublicPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicy: (() { final guardedValue = map['resourcePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

