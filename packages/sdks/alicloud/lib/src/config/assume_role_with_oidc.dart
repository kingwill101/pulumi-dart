// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssumeRoleWithOidc {
  /// ARN of the OIDC IdP.
  final pulumi.Input<String> oidcProviderArn;
  final pulumi.Input<String>? oidcToken;
  /// The file path of OIDC token that is issued by the external IdP.
  final pulumi.Input<String>? oidcTokenFile;
  /// The policy that specifies the permissions of the returned STS token. You can use this parameter to grant the STS token fewer permissions than the permissions granted to the RAM role.
  final pulumi.Input<String>? policy;
  /// ARN of a RAM role to assume prior to making API calls.
  final pulumi.Input<String> roleArn;
  /// The custom name of the role session. Set this parameter based on your business requirements. In most cases, this parameter is set to the identity of the user who calls the operation, for example, the username.
  final pulumi.Input<String>? roleSessionName;
  /// The validity period of the STS token. Unit: seconds. Default value: 3600. Minimum value: 900. Maximum value: the value of the MaxSessionDuration parameter when creating a ram role.
  final pulumi.Input<int>? sessionExpiration;

  /// Creates a new [AssumeRoleWithOidc].
  /// [oidcProviderArn] ARN of the OIDC IdP.
  /// [oidcToken] Optional.
  /// [oidcTokenFile] The file path of OIDC token that is issued by the external IdP.
  /// [policy] The policy that specifies the permissions of the returned STS token. You can use this parameter to grant the STS token fewer permissions than the permissions granted to the RAM role.
  /// [roleArn] ARN of a RAM role to assume prior to making API calls.
  /// [roleSessionName] The custom name of the role session. Set this parameter based on your business requirements. In most cases, this parameter is set to the identity of the user who calls the operation, for example, the username.
  /// [sessionExpiration] The validity period of the STS token. Unit: seconds. Default value: 3600. Minimum value: 900. Maximum value: the value of the MaxSessionDuration parameter when creating a ram role.
  const AssumeRoleWithOidc({
    required this.oidcProviderArn,
    this.oidcToken,
    this.oidcTokenFile,
    this.policy,
    required this.roleArn,
    this.roleSessionName,
    this.sessionExpiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidcProviderArn': oidcProviderArn,
      'oidcToken': ?oidcToken,
      'oidcTokenFile': ?oidcTokenFile,
      'policy': ?policy,
      'roleArn': roleArn,
      'roleSessionName': ?roleSessionName,
      'sessionExpiration': ?sessionExpiration,
    };
  }

  factory AssumeRoleWithOidc.fromMap(Map<String, dynamic> map) {
    return AssumeRoleWithOidc(
      oidcProviderArn: pulumi.Input.fromValue(map['oidcProviderArn'] as String),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcTokenFile: (() { final guardedValue = map['oidcTokenFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      roleSessionName: (() { final guardedValue = map['roleSessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionExpiration: (() { final guardedValue = map['sessionExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

