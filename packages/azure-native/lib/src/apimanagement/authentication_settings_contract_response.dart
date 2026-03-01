// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth2_authentication_settings_contract_response.dart';
import 'open_id_authentication_settings_contract_response.dart';

/// API Authentication Settings.
class AuthenticationSettingsContractResponse {
  /// OAuth2 Authentication settings
  final OAuth2AuthenticationSettingsContractResponse? oAuth2;
  /// Collection of OAuth2 authentication settings included into this API.
  final List<OAuth2AuthenticationSettingsContractResponse>? oAuth2AuthenticationSettings;
  /// OpenID Connect Authentication Settings
  final OpenIdAuthenticationSettingsContractResponse? openid;
  /// Collection of Open ID Connect authentication settings included into this API.
  final List<OpenIdAuthenticationSettingsContractResponse>? openidAuthenticationSettings;

  /// Creates a new [AuthenticationSettingsContractResponse].
  /// [oAuth2] OAuth2 Authentication settings
  /// [oAuth2AuthenticationSettings] Collection of OAuth2 authentication settings included into this API.
  /// [openid] OpenID Connect Authentication Settings
  /// [openidAuthenticationSettings] Collection of Open ID Connect authentication settings included into this API.
  AuthenticationSettingsContractResponse({
    this.oAuth2,
    this.oAuth2AuthenticationSettings,
    this.openid,
    this.openidAuthenticationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuth2': ?oAuth2 == null ? null : oAuth2!.toMap(),
      'oAuth2AuthenticationSettings': ?oAuth2AuthenticationSettings == null ? null : pulumi.Input.encodeList<OAuth2AuthenticationSettingsContractResponse, Map<String, dynamic>>(oAuth2AuthenticationSettings!, (value) => value.toMap()),
      'openid': ?openid == null ? null : openid!.toMap(),
      'openidAuthenticationSettings': ?openidAuthenticationSettings == null ? null : pulumi.Input.encodeList<OpenIdAuthenticationSettingsContractResponse, Map<String, dynamic>>(openidAuthenticationSettings!, (value) => value.toMap()),
    };
  }

  factory AuthenticationSettingsContractResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingsContractResponse(
      oAuth2: map['oAuth2'] == null ? null : OAuth2AuthenticationSettingsContractResponse.fromMap((map['oAuth2'] as Map).cast<String, dynamic>()),
      oAuth2AuthenticationSettings: map['oAuth2AuthenticationSettings'] == null ? null : pulumi.Input.decodeList<OAuth2AuthenticationSettingsContractResponse>(map['oAuth2AuthenticationSettings'], (value) => OAuth2AuthenticationSettingsContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      openid: map['openid'] == null ? null : OpenIdAuthenticationSettingsContractResponse.fromMap((map['openid'] as Map).cast<String, dynamic>()),
      openidAuthenticationSettings: map['openidAuthenticationSettings'] == null ? null : pulumi.Input.decodeList<OpenIdAuthenticationSettingsContractResponse>(map['openidAuthenticationSettings'], (value) => OpenIdAuthenticationSettingsContractResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

