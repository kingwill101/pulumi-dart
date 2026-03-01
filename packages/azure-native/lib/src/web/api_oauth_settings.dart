// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_oauth_settings_parameter.dart';

/// OAuth settings for the connection provider
class ApiOAuthSettings {
  /// Resource provider client id
  final String? clientId;
  /// Client Secret needed for OAuth
  final String? clientSecret;
  /// OAuth parameters key is the name of parameter
  final Map<String, ApiOAuthSettingsParameter>? customParameters;
  /// Identity provider
  final String? identityProvider;
  /// Read only properties for this oauth setting.
  final dynamic properties;
  /// Url
  final String? redirectUrl;
  /// OAuth scopes
  final List<String>? scopes;

  /// Creates a new [ApiOAuthSettings].
  /// [clientId] Resource provider client id
  /// [clientSecret] Client Secret needed for OAuth
  /// [customParameters] OAuth parameters key is the name of parameter
  /// [identityProvider] Identity provider
  /// [properties] Read only properties for this oauth setting.
  /// [redirectUrl] Url
  /// [scopes] OAuth scopes
  ApiOAuthSettings({
    this.clientId,
    this.clientSecret,
    this.customParameters,
    this.identityProvider,
    this.properties,
    this.redirectUrl,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'customParameters': ?customParameters == null ? null : pulumi.Input.encodeMapValues<ApiOAuthSettingsParameter, Map<String, dynamic>>(customParameters!, (value) => value.toMap()),
      'identityProvider': ?identityProvider,
      'properties': ?properties,
      'redirectUrl': ?redirectUrl,
      'scopes': ?scopes,
    };
  }

  factory ApiOAuthSettings.fromMap(Map<String, dynamic> map) {
    return ApiOAuthSettings(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      customParameters: map['customParameters'] == null ? null : pulumi.Input.decodeMapValues<ApiOAuthSettingsParameter>(map['customParameters'], (value) => ApiOAuthSettingsParameter.fromMap((value as Map).cast<String, dynamic>())),
      identityProvider: map['identityProvider'] == null ? null : map['identityProvider'] as String,
      properties: map['properties'] == null ? null : map['properties'],
      redirectUrl: map['redirectUrl'] == null ? null : map['redirectUrl'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}

