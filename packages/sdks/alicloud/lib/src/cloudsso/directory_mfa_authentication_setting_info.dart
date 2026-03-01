// ignore_for_file: unused_element, unnecessary_cast


class DirectoryMfaAuthenticationSettingInfo {
  /// Global MFA validation policy
  final String? mfaAuthenticationAdvanceSettings;
  /// MFA verification policy for abnormal logon.
  final String? operationForRiskLogin;

  /// Creates a new [DirectoryMfaAuthenticationSettingInfo].
  /// [mfaAuthenticationAdvanceSettings] Global MFA validation policy
  /// [operationForRiskLogin] MFA verification policy for abnormal logon.
  DirectoryMfaAuthenticationSettingInfo({
    this.mfaAuthenticationAdvanceSettings,
    this.operationForRiskLogin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mfaAuthenticationAdvanceSettings': ?mfaAuthenticationAdvanceSettings,
      'operationForRiskLogin': ?operationForRiskLogin,
    };
  }

  factory DirectoryMfaAuthenticationSettingInfo.fromMap(Map<String, dynamic> map) {
    return DirectoryMfaAuthenticationSettingInfo(
      mfaAuthenticationAdvanceSettings: map['mfaAuthenticationAdvanceSettings'] == null ? null : map['mfaAuthenticationAdvanceSettings'] as String,
      operationForRiskLogin: map['operationForRiskLogin'] == null ? null : map['operationForRiskLogin'] as String,
    );
  }
}

