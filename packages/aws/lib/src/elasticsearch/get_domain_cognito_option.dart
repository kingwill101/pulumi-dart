// ignore_for_file: unused_element, unnecessary_cast

class GetDomainCognitoOption {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  /// The Cognito Identity pool used by the domain.
  final String identityPoolId;

  /// The IAM Role with the AmazonESCognitoAccess policy attached.
  final String roleArn;

  /// The Cognito User pool used by the domain.
  final String userPoolId;

  /// Creates a new [GetDomainCognitoOption].
  /// [enabled] Whether node to node encryption is enabled.
  /// [identityPoolId] The Cognito Identity pool used by the domain.
  /// [roleArn] The IAM Role with the AmazonESCognitoAccess policy attached.
  /// [userPoolId] The Cognito User pool used by the domain.
  GetDomainCognitoOption({
    required this.enabled,
    required this.identityPoolId,
    required this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['identityPoolId'] = identityPoolId;
    map['roleArn'] = roleArn;
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetDomainCognitoOption.fromMap(Map<String, dynamic> map) {
    return GetDomainCognitoOption(
      enabled: map['enabled'] as bool,
      identityPoolId: map['identityPoolId'] as String,
      roleArn: map['roleArn'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
