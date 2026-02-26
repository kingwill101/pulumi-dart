// ignore_for_file: unused_element, unnecessary_cast

import '../settings_access_settings_workforce_identity_settings_oauth2/settings_access_settings_workforce_identity_settings_oauth2.dart';

class SettingsAccessSettingsWorkforceIdentitySettings {
  /// OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity
  /// federation services.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedAccessSettingsWorkforceIdentitySettingsOauth2"" pulumi-lang-dotnet=""NestedAccessSettingsWorkforceIdentitySettingsOauth2"" pulumi-lang-go=""nestedAccessSettingsWorkforceIdentitySettingsOauth2"" pulumi-lang-python=""nested_access_settings_workforce_identity_settings_oauth2"" pulumi-lang-yaml=""nestedAccessSettingsWorkforceIdentitySettingsOauth2"" pulumi-lang-java=""nestedAccessSettingsWorkforceIdentitySettingsOauth2"">"nested_access_settings_workforce_identity_settings_oauth2"</span>></a>The <span pulumi-lang-nodejs="`oauth2`" pulumi-lang-dotnet="`Oauth2`" pulumi-lang-go="`oauth2`" pulumi-lang-python="`oauth2`" pulumi-lang-yaml="`oauth2`" pulumi-lang-java="`oauth2`">`oauth2`</span> block supports:
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
