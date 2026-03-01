// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth2_authentication_settings_contract.dart';
import 'open_id_authentication_settings_contract.dart';

/// API Authentication Settings.
class AuthenticationSettingsContract {
  /// OAuth2 Authentication settings
  final OAuth2AuthenticationSettingsContract? oAuth2;
  /// Collection of OAuth2 authentication settings included into this API.
  final List<OAuth2AuthenticationSettingsContract>? oAuth2AuthenticationSettings;
  /// OpenID Connect Authentication Settings
  final OpenIdAuthenticationSettingsContract? openid;
  /// Collection of Open ID Connect authentication settings included into this API.
  final List<OpenIdAuthenticationSettingsContract>? openidAuthenticationSettings;

  /// Creates a new [AuthenticationSettingsContract].
  /// [oAuth2] OAuth2 Authentication settings
  /// [oAuth2AuthenticationSettings] Collection of OAuth2 authentication settings included into this API.
  /// [openid] OpenID Connect Authentication Settings
  /// [openidAuthenticationSettings] Collection of Open ID Connect authentication settings included into this API.
  AuthenticationSettingsContract({
    this.oAuth2,
    this.oAuth2AuthenticationSettings,
    this.openid,
    this.openidAuthenticationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuth2': ?oAuth2 == null ? null : oAuth2!.toMap(),
      'oAuth2AuthenticationSettings': ?oAuth2AuthenticationSettings == null ? null : pulumi.Input.encodeList<OAuth2AuthenticationSettingsContract, Map<String, dynamic>>(oAuth2AuthenticationSettings!, (value) => value.toMap()),
      'openid': ?openid == null ? null : openid!.toMap(),
      'openidAuthenticationSettings': ?openidAuthenticationSettings == null ? null : pulumi.Input.encodeList<OpenIdAuthenticationSettingsContract, Map<String, dynamic>>(openidAuthenticationSettings!, (value) => value.toMap()),
    };
  }

  factory AuthenticationSettingsContract.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingsContract(
      oAuth2: map['oAuth2'] == null ? null : OAuth2AuthenticationSettingsContract.fromMap((map['oAuth2'] as Map).cast<String, dynamic>()),
      oAuth2AuthenticationSettings: map['oAuth2AuthenticationSettings'] == null ? null : pulumi.Input.decodeList<OAuth2AuthenticationSettingsContract>(map['oAuth2AuthenticationSettings'], (value) => OAuth2AuthenticationSettingsContract.fromMap((value as Map).cast<String, dynamic>())),
      openid: map['openid'] == null ? null : OpenIdAuthenticationSettingsContract.fromMap((map['openid'] as Map).cast<String, dynamic>()),
      openidAuthenticationSettings: map['openidAuthenticationSettings'] == null ? null : pulumi.Input.decodeList<OpenIdAuthenticationSettingsContract>(map['openidAuthenticationSettings'], (value) => OpenIdAuthenticationSettingsContract.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

