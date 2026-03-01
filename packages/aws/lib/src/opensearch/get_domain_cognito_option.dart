// ignore_for_file: unused_element, unnecessary_cast


class GetDomainCognitoOption {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;
  /// Cognito Identity pool used by the domain.
  final String identityPoolId;
  /// IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached.
  final String roleArn;
  /// Cognito User pool used by the domain.
  final String userPoolId;

  /// Creates a new [GetDomainCognitoOption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [identityPoolId] Cognito Identity pool used by the domain.
  /// [roleArn] IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached.
  /// [userPoolId] Cognito User pool used by the domain.
  GetDomainCognitoOption({
    required this.enabled,
    required this.identityPoolId,
    required this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'identityPoolId': identityPoolId,
      'roleArn': roleArn,
      'userPoolId': userPoolId,
    };
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

