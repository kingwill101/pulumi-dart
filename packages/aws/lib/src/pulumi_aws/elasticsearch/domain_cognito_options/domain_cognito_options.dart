// ignore_for_file: unused_element, unnecessary_cast

class DomainCognitoOptions {
  /// Whether Amazon Cognito authentication with Kibana is enabled or not.
  final bool? enabled;

  /// ID of the Cognito Identity Pool to use.
  final String identityPoolId;

  /// ARN of the IAM role that has the AmazonESCognitoAccess policy attached.
  final String roleArn;

  /// ID of the Cognito User Pool to use.
  final String userPoolId;

  DomainCognitoOptions({
    this.enabled,
    required this.identityPoolId,
    required this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['identityPoolId'] = identityPoolId;
    map['roleArn'] = roleArn;
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory DomainCognitoOptions.fromMap(Map<String, dynamic> map) {
    return DomainCognitoOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      identityPoolId: map['identityPoolId'] as String,
      roleArn: map['roleArn'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
