// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainCognitoOption {
  /// Whether node to node encryption is enabled.
  final pulumi.Input<bool> enabled;

  /// The Cognito Identity pool used by the domain.
  final pulumi.Input<String> identityPoolId;

  /// The IAM Role with the AmazonESCognitoAccess policy attached.
  final pulumi.Input<String> roleArn;

  /// The Cognito User pool used by the domain.
  final pulumi.Input<String> userPoolId;

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
    return <String, dynamic>{
      'enabled': enabled,
      'identityPoolId': identityPoolId,
      'roleArn': roleArn,
      'userPoolId': userPoolId,
    };
  }

  factory GetDomainCognitoOption.fromMap(Map<String, dynamic> map) {
    return GetDomainCognitoOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      identityPoolId: pulumi.Input.fromValue(map['identityPoolId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
