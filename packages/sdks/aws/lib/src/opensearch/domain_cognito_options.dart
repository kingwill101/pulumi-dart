// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCognitoOptions {
  /// Whether Amazon Cognito authentication with Dashboard is enabled or not. Default is `false`.
  final pulumi.Input<bool?>? enabled;
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
  const DomainCognitoOptions({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityPoolId: pulumi.Input.fromValue(map['identityPoolId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
