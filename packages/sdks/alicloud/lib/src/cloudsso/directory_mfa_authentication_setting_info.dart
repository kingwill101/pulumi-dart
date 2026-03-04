// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryMfaAuthenticationSettingInfo {
  /// Global MFA validation policy
  final pulumi.Input<String>? mfaAuthenticationAdvanceSettings;

  /// MFA verification policy for abnormal logon.
  final pulumi.Input<String>? operationForRiskLogin;

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

  factory DirectoryMfaAuthenticationSettingInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return DirectoryMfaAuthenticationSettingInfo(
      mfaAuthenticationAdvanceSettings: (() {
        final guardedValue = map['mfaAuthenticationAdvanceSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operationForRiskLogin: (() {
        final guardedValue = map['operationForRiskLogin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
