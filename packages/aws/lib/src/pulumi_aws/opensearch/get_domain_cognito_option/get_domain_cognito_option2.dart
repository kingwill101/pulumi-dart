// ignore_for_file: unused_element, unnecessary_cast

class GetDomainCognitoOption2 {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Cognito Identity pool used by the domain.
  final String identityPoolId;

  /// IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached.
  final String roleArn;

  /// Cognito User pool used by the domain.
  final String userPoolId;

  GetDomainCognitoOption2({
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

  factory GetDomainCognitoOption2.fromMap(Map<String, dynamic> map) {
    return GetDomainCognitoOption2(
      enabled: map['enabled'] as bool,
      identityPoolId: map['identityPoolId'] as String,
      roleArn: map['roleArn'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
