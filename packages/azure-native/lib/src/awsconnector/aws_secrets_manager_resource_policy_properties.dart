// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsSecretsManagerResourcePolicy
class AwsSecretsManagerResourcePolicyProperties {
  /// Property blockPublicPolicy
  final bool? blockPublicPolicy;
  /// Property id
  final String? id;
  /// Property resourcePolicy
  final dynamic resourcePolicy;
  /// Property secretId
  final String? secretId;

  /// Creates a new [AwsSecretsManagerResourcePolicyProperties].
  /// [blockPublicPolicy] Property blockPublicPolicy
  /// [id] Property id
  /// [resourcePolicy] Property resourcePolicy
  /// [secretId] Property secretId
  AwsSecretsManagerResourcePolicyProperties({
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

  factory AwsSecretsManagerResourcePolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsSecretsManagerResourcePolicyProperties(
      blockPublicPolicy: map['blockPublicPolicy'] == null ? null : map['blockPublicPolicy'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      resourcePolicy: map['resourcePolicy'] == null ? null : map['resourcePolicy'],
      secretId: map['secretId'] == null ? null : map['secretId'] as String,
    );
  }
}

