// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainCognitoOption {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// Cognito Identity pool used by the domain.
  final pulumi.Input<String> identityPoolId;
  /// IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached.
  final pulumi.Input<String> roleArn;
  /// Cognito User pool used by the domain.
  final pulumi.Input<String> userPoolId;

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
      enabled: (map['enabled'] as bool).input(),
      identityPoolId: (map['identityPoolId'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

