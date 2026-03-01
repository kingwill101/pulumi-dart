// ignore_for_file: unused_element, unnecessary_cast


class ProviderAssumeRoleWithOidc {
  /// ARN of the OIDC IdP.
  final String oidcProviderArn;
  final String? oidcToken;
  /// The file path of OIDC token that is issued by the external IdP.
  final String? oidcTokenFile;
  /// The policy that specifies the permissions of the returned STS token. You can use this parameter to grant the STS token fewer permissions than the permissions granted to the RAM role.
  final String? policy;
  /// ARN of a RAM role to assume prior to making API calls.
  final String roleArn;
  /// The custom name of the role session. Set this parameter based on your business requirements. In most cases, this parameter is set to the identity of the user who calls the operation, for example, the username.
  final String? roleSessionName;
  /// The validity period of the STS token. Unit: seconds. Default value: 3600. Minimum value: 900. Maximum value: the value of the MaxSessionDuration parameter when creating a ram role.
  final int? sessionExpiration;

  /// Creates a new [ProviderAssumeRoleWithOidc].
  /// [oidcProviderArn] ARN of the OIDC IdP.
  /// [oidcToken] Optional.
  /// [oidcTokenFile] The file path of OIDC token that is issued by the external IdP.
  /// [policy] The policy that specifies the permissions of the returned STS token. You can use this parameter to grant the STS token fewer permissions than the permissions granted to the RAM role.
  /// [roleArn] ARN of a RAM role to assume prior to making API calls.
  /// [roleSessionName] The custom name of the role session. Set this parameter based on your business requirements. In most cases, this parameter is set to the identity of the user who calls the operation, for example, the username.
  /// [sessionExpiration] The validity period of the STS token. Unit: seconds. Default value: 3600. Minimum value: 900. Maximum value: the value of the MaxSessionDuration parameter when creating a ram role.
  ProviderAssumeRoleWithOidc({
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

  factory ProviderAssumeRoleWithOidc.fromMap(Map<String, dynamic> map) {
    return ProviderAssumeRoleWithOidc(
      oidcProviderArn: map['oidcProviderArn'] as String,
      oidcToken: map['oidcToken'] == null ? null : map['oidcToken'] as String,
      oidcTokenFile: map['oidcTokenFile'] == null ? null : map['oidcTokenFile'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      roleArn: map['roleArn'] as String,
      roleSessionName: map['roleSessionName'] == null ? null : map['roleSessionName'] as String,
      sessionExpiration: map['sessionExpiration'] == null ? null : map['sessionExpiration'] as int,
    );
  }
}

