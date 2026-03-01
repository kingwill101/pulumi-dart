// ignore_for_file: unused_element, unnecessary_cast

import 'settings_access_settings_workforce_identity_settings_oauth2.dart';

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

  /// Creates a new [SettingsAccessSettingsWorkforceIdentitySettings].
  /// [oauth2] OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity
  /// [workforcePools] The workforce pool resources. Only one workforce pool is accepted.
  SettingsAccessSettingsWorkforceIdentitySettings({
    this.oauth2,
    this.workforcePools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2': ?oauth2 == null ? null : oauth2!.toMap(),
      'workforcePools': ?workforcePools,
    };
  }

  factory SettingsAccessSettingsWorkforceIdentitySettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return SettingsAccessSettingsWorkforceIdentitySettings(
      oauth2: map['oauth2'] == null
          ? null
          : SettingsAccessSettingsWorkforceIdentitySettingsOauth2.fromMap(
              (map['oauth2'] as Map).cast<String, dynamic>(),
            ),
      workforcePools: map['workforcePools'] == null
          ? null
          : map['workforcePools'] as String,
    );
  }
}
