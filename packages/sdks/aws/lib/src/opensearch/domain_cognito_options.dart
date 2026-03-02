// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCognitoOptions {
  /// Whether Amazon Cognito authentication with Dashboard is enabled or not. Default is `false`.
  final pulumi.Input<bool>? enabled;
  /// ID of the Cognito Identity Pool to use.
  final pulumi.Input<String> identityPoolId;
  /// ARN of the IAM role that has the AmazonOpenSearchServiceCognitoAccess policy attached.
  final pulumi.Input<String> roleArn;
  /// ID of the Cognito User Pool to use.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [DomainCognitoOptions].
  /// [enabled] Whether Amazon Cognito authentication with Dashboard is enabled or not. Default is `false`.
  /// [identityPoolId] ID of the Cognito Identity Pool to use.
  /// [roleArn] ARN of the IAM role that has the AmazonOpenSearchServiceCognitoAccess policy attached.
  /// [userPoolId] ID of the Cognito User Pool to use.
  DomainCognitoOptions({
    this.enabled,
    required this.identityPoolId,
    required this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'identityPoolId': identityPoolId,
      'roleArn': roleArn,
      'userPoolId': userPoolId,
    };
  }

  factory DomainCognitoOptions.fromMap(Map<String, dynamic> map) {
    return DomainCognitoOptions(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      identityPoolId: (map['identityPoolId'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

