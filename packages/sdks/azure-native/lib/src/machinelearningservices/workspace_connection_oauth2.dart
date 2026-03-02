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
  WorkspaceConnectionOAuth2({
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
      authUrl: map['authUrl'] == null ? null : (map['authUrl']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      developerToken: map['developerToken'] == null ? null : (map['developerToken']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      refreshToken: map['refreshToken'] == null ? null : (map['refreshToken']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

