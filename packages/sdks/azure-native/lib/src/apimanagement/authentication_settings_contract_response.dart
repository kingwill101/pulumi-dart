// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth2_authentication_settings_contract_response.dart';
import 'open_id_authentication_settings_contract_response.dart';

/// API Authentication Settings.
class AuthenticationSettingsContractResponse {
  /// OAuth2 Authentication settings
  final pulumi.Input<OAuth2AuthenticationSettingsContractResponse>? oAuth2;
  /// Collection of OAuth2 authentication settings included into this API.
  final pulumi.Input<List<OAuth2AuthenticationSettingsContractResponse>>? oAuth2AuthenticationSettings;
  /// OpenID Connect Authentication Settings
  final pulumi.Input<OpenIdAuthenticationSettingsContractResponse>? openid;
  /// Collection of Open ID Connect authentication settings included into this API.
  final pulumi.Input<List<OpenIdAuthenticationSettingsContractResponse>>? openidAuthenticationSettings;

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
      'oAuth2': ?pulumi.Input.mapOptionalInputValue<OAuth2AuthenticationSettingsContractResponse, Map<String, dynamic>>(oAuth2, (value) => value.toMap()),
      'oAuth2AuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<List<OAuth2AuthenticationSettingsContractResponse>, List<Map<String, dynamic>>>(oAuth2AuthenticationSettings, (value) => pulumi.Input.encodeList<OAuth2AuthenticationSettingsContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openid': ?pulumi.Input.mapOptionalInputValue<OpenIdAuthenticationSettingsContractResponse, Map<String, dynamic>>(openid, (value) => value.toMap()),
      'openidAuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<List<OpenIdAuthenticationSettingsContractResponse>, List<Map<String, dynamic>>>(openidAuthenticationSettings, (value) => pulumi.Input.encodeList<OpenIdAuthenticationSettingsContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthenticationSettingsContractResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingsContractResponse(
      oAuth2: map['oAuth2'] == null ? null : (OAuth2AuthenticationSettingsContractResponse.fromMap((map['oAuth2']! as Map).cast<String, dynamic>())).input(),
      oAuth2AuthenticationSettings: map['oAuth2AuthenticationSettings'] == null ? null : (pulumi.Input.decodeList<OAuth2AuthenticationSettingsContractResponse>(map['oAuth2AuthenticationSettings']!, (value) => OAuth2AuthenticationSettingsContractResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      openid: map['openid'] == null ? null : (OpenIdAuthenticationSettingsContractResponse.fromMap((map['openid']! as Map).cast<String, dynamic>())).input(),
      openidAuthenticationSettings: map['openidAuthenticationSettings'] == null ? null : (pulumi.Input.decodeList<OpenIdAuthenticationSettingsContractResponse>(map['openidAuthenticationSettings']!, (value) => OpenIdAuthenticationSettingsContractResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

