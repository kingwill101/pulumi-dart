// ignore_for_file: unused_element, unnecessary_cast

import '../settings_access_settings_workforce_identity_settings_oauth2/settings_access_settings_workforce_identity_settings_oauth2.dart';

class SettingsAccessSettingsWorkforceIdentitySettings {
  /// OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity
  /// federation services.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_access_settings_workforce_identity_settings_oauth2"></a>The `oauth2` block supports:
  final SettingsAccessSettingsWorkforceIdentitySettingsOauth2? oauth2;

  /// The workforce pool resources. Only one workforce pool is accepted.
  final String? workforcePools;

  SettingsAccessSettingsWorkforceIdentitySettings({
    this.oauth2,
    this.workforcePools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oauth2Value = oauth2;
    if (oauth2Value != null) {
      map['oauth2'] = oauth2Value.toMap();
    }
    final workforcePoolsValue = workforcePools;
    if (workforcePoolsValue != null) {
      map['workforcePools'] = workforcePoolsValue;
    }
    return map;
  }

  factory SettingsAccessSettingsWorkforceIdentitySettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsAccessSettingsWorkforceIdentitySettings(
      oauth2: map['oauth2'] == null
          ? null
          : SettingsAccessSettingsWorkforceIdentitySettingsOauth2.fromMap(
              (map['oauth2'] as Map).cast<String, dynamic>()),
      workforcePools: map['workforcePools'] == null
          ? null
          : map['workforcePools'] as String,
    );
  }
}
