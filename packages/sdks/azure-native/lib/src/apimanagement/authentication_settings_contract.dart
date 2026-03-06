// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth2_authentication_settings_contract.dart';
import 'open_id_authentication_settings_contract.dart';

/// API Authentication Settings.
class AuthenticationSettingsContract {
  /// OAuth2 Authentication settings
  final pulumi.Input<OAuth2AuthenticationSettingsContract>? oAuth2;
  /// Collection of OAuth2 authentication settings included into this API.
  final pulumi.Input<List<OAuth2AuthenticationSettingsContract>>? oAuth2AuthenticationSettings;
  /// OpenID Connect Authentication Settings
  final pulumi.Input<OpenIdAuthenticationSettingsContract>? openid;
  /// Collection of Open ID Connect authentication settings included into this API.
  final pulumi.Input<List<OpenIdAuthenticationSettingsContract>>? openidAuthenticationSettings;

  /// Creates a new [AuthenticationSettingsContract].
  /// [oAuth2] OAuth2 Authentication settings
  /// [oAuth2AuthenticationSettings] Collection of OAuth2 authentication settings included into this API.
  /// [openid] OpenID Connect Authentication Settings
  /// [openidAuthenticationSettings] Collection of Open ID Connect authentication settings included into this API.
  const AuthenticationSettingsContract({
    this.oAuth2,
    this.oAuth2AuthenticationSettings,
    this.openid,
    this.openidAuthenticationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuth2': ?pulumi.Input.mapOptionalInputValue<OAuth2AuthenticationSettingsContract, Map<String, dynamic>>(oAuth2, (value) => value.toMap()),
      'oAuth2AuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<List<OAuth2AuthenticationSettingsContract>, List<Map<String, dynamic>>>(oAuth2AuthenticationSettings, (value) => pulumi.Input.encodeList<OAuth2AuthenticationSettingsContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openid': ?pulumi.Input.mapOptionalInputValue<OpenIdAuthenticationSettingsContract, Map<String, dynamic>>(openid, (value) => value.toMap()),
      'openidAuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<List<OpenIdAuthenticationSettingsContract>, List<Map<String, dynamic>>>(openidAuthenticationSettings, (value) => pulumi.Input.encodeList<OpenIdAuthenticationSettingsContract, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthenticationSettingsContract.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingsContract(
      oAuth2: (() { final guardedValue = map['oAuth2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OAuth2AuthenticationSettingsContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oAuth2AuthenticationSettings: (() { final guardedValue = map['oAuth2AuthenticationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OAuth2AuthenticationSettingsContract>(guardedValue, (value) => OAuth2AuthenticationSettingsContract.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openid: (() { final guardedValue = map['openid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdAuthenticationSettingsContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openidAuthenticationSettings: (() { final guardedValue = map['openidAuthenticationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenIdAuthenticationSettingsContract>(guardedValue, (value) => OpenIdAuthenticationSettingsContract.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

