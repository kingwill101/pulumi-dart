// ignore_for_file: unused_element, unnecessary_cast

import 'settings_access_settings_allowed_domains_settings.dart';
import 'settings_access_settings_cors_settings.dart';
import 'settings_access_settings_gcip_settings.dart';
import 'settings_access_settings_oauth_settings.dart';
import 'settings_access_settings_reauth_settings.dart';
import 'settings_access_settings_workforce_identity_settings.dart';

class SettingsAccessSettings {
  /// Settings to configure and enable allowed domains.
  /// Structure is documented below.
  final SettingsAccessSettingsAllowedDomainsSettings? allowedDomainsSettings;

  /// Configuration to allow cross-origin requests via IAP.
  /// Structure is documented below.
  final SettingsAccessSettingsCorsSettings? corsSettings;

  /// GCIP claims and endpoint configurations for 3p identity providers.
  /// * Enabling gcipSetting significantly changes the way IAP authenticates users. Identity Platform does not support IAM, so IAP will not enforce any IAM policies for requests to your application.
  /// Structure is documented below.
  final SettingsAccessSettingsGcipSettings? gcipSettings;

  /// Identity sources that IAP can use to authenticate the end user. Only one identity source
  /// can be configured. The possible values are:
  /// * `WORKFORCE_IDENTITY_FEDERATION`: Use external identities set up on Google Cloud Workforce
  /// Identity Federation.
  /// Each value may be one of: `WORKFORCE_IDENTITY_FEDERATION`.
  final List<String>? identitySources;

  /// Settings to configure IAP's OAuth behavior.
  /// Structure is documented below.
  final SettingsAccessSettingsOauthSettings? oauthSettings;

  /// Settings to configure reauthentication policies in IAP.
  /// Structure is documented below.
  final SettingsAccessSettingsReauthSettings? reauthSettings;

  /// Settings to configure the workforce identity federation, including workforce pools
  /// and OAuth 2.0 settings.
  /// Structure is documented below.
  final SettingsAccessSettingsWorkforceIdentitySettings?
      workforceIdentitySettings;

  /// Creates a new [SettingsAccessSettings].
  /// [allowedDomainsSettings] Settings to configure and enable allowed domains.
  /// [corsSettings] Configuration to allow cross-origin requests via IAP.
  /// [gcipSettings] GCIP claims and endpoint configurations for 3p identity providers.
  /// [identitySources] Identity sources that IAP can use to authenticate the end user. Only one identity source
  /// [oauthSettings] Settings to configure IAP's OAuth behavior.
  /// [reauthSettings] Settings to configure reauthentication policies in IAP.
  /// [workforceIdentitySettings] Settings to configure the workforce identity federation, including workforce pools
  SettingsAccessSettings({
    this.allowedDomainsSettings,
    this.corsSettings,
    this.gcipSettings,
    this.identitySources,
    this.oauthSettings,
    this.reauthSettings,
    this.workforceIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedDomainsSettingsValue = allowedDomainsSettings;
    if (allowedDomainsSettingsValue != null) {
      map['allowedDomainsSettings'] = allowedDomainsSettingsValue.toMap();
    }
    final corsSettingsValue = corsSettings;
    if (corsSettingsValue != null) {
      map['corsSettings'] = corsSettingsValue.toMap();
    }
    final gcipSettingsValue = gcipSettings;
    if (gcipSettingsValue != null) {
      map['gcipSettings'] = gcipSettingsValue.toMap();
    }
    final identitySourcesValue = identitySources;
    if (identitySourcesValue != null) {
      map['identitySources'] = identitySourcesValue;
    }
    final oauthSettingsValue = oauthSettings;
    if (oauthSettingsValue != null) {
      map['oauthSettings'] = oauthSettingsValue.toMap();
    }
    final reauthSettingsValue = reauthSettings;
    if (reauthSettingsValue != null) {
      map['reauthSettings'] = reauthSettingsValue.toMap();
    }
    final workforceIdentitySettingsValue = workforceIdentitySettings;
    if (workforceIdentitySettingsValue != null) {
      map['workforceIdentitySettings'] = workforceIdentitySettingsValue.toMap();
    }
    return map;
  }

  factory SettingsAccessSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettings(
      allowedDomainsSettings: map['allowedDomainsSettings'] == null
          ? null
          : SettingsAccessSettingsAllowedDomainsSettings.fromMap(
              (map['allowedDomainsSettings'] as Map).cast<String, dynamic>()),
      corsSettings: map['corsSettings'] == null
          ? null
          : SettingsAccessSettingsCorsSettings.fromMap(
              (map['corsSettings'] as Map).cast<String, dynamic>()),
      gcipSettings: map['gcipSettings'] == null
          ? null
          : SettingsAccessSettingsGcipSettings.fromMap(
              (map['gcipSettings'] as Map).cast<String, dynamic>()),
      identitySources: map['identitySources'] == null
          ? null
          : (map['identitySources'] as List).cast<String>(),
      oauthSettings: map['oauthSettings'] == null
          ? null
          : SettingsAccessSettingsOauthSettings.fromMap(
              (map['oauthSettings'] as Map).cast<String, dynamic>()),
      reauthSettings: map['reauthSettings'] == null
          ? null
          : SettingsAccessSettingsReauthSettings.fromMap(
              (map['reauthSettings'] as Map).cast<String, dynamic>()),
      workforceIdentitySettings: map['workforceIdentitySettings'] == null
          ? null
          : SettingsAccessSettingsWorkforceIdentitySettings.fromMap(
              (map['workforceIdentitySettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
