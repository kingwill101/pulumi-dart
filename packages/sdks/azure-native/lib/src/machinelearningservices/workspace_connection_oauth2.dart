// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClientId and ClientSecret are required. Other properties are optional
/// depending on each OAuth2 provider's implementation.
class WorkspaceConnectionOAuth2 {
  /// Required by Concur connection category
  final pulumi.Input<String>? authUrl;
  /// Client id in the format of UUID
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? clientSecret;
  /// Required by GoogleAdWords connection category
  final pulumi.Input<String>? developerToken;
  final pulumi.Input<String>? password;
  /// Required by GoogleBigQuery, GoogleAdWords, Hubspot, QuickBooks, Square, Xero, Zoho
  /// where user needs to get RefreshToken offline
  final pulumi.Input<String>? refreshToken;
  /// Required by QuickBooks and Xero connection categories
  final pulumi.Input<String>? tenantId;
  /// Concur, ServiceNow auth server AccessToken grant type is 'Password'
  /// which requires UsernamePassword
  final pulumi.Input<String>? username;

  /// Creates a new [WorkspaceConnectionOAuth2].
  /// [authUrl] Required by Concur connection category
  /// [clientId] Client id in the format of UUID
  /// [clientSecret] Optional.
  /// [developerToken] Required by GoogleAdWords connection category
  /// [password] Optional.
  /// [refreshToken] Required by GoogleBigQuery, GoogleAdWords, Hubspot, QuickBooks, Square, Xero, Zoho
  /// [tenantId] Required by QuickBooks and Xero connection categories
  /// [username] Concur, ServiceNow auth server AccessToken grant type is 'Password'
  const WorkspaceConnectionOAuth2({
    this.authUrl,
    this.clientId,
    this.clientSecret,
    this.developerToken,
    this.password,
    this.refreshToken,
    this.tenantId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authUrl': ?authUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'developerToken': ?developerToken,
      'password': ?password,
      'refreshToken': ?refreshToken,
      'tenantId': ?tenantId,
      'username': ?username,
    };
  }

  factory WorkspaceConnectionOAuth2.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionOAuth2(
      authUrl: (() { final guardedValue = map['authUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerToken: (() { final guardedValue = map['developerToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
