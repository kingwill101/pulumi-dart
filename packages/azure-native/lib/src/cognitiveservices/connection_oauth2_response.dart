// ignore_for_file: unused_element, unnecessary_cast


/// ClientId and ClientSecret are required. Other properties are optional
/// depending on each OAuth2 provider's implementation.
class ConnectionOAuth2Response {
  /// Required by Concur connection category
  final String? authUrl;
  /// Client id in the format of UUID
  final String? clientId;
  final String? clientSecret;
  /// Required by GoogleAdWords connection category
  final String? developerToken;
  final String? password;
  /// Required by GoogleBigQuery, GoogleAdWords, Hubspot, QuickBooks, Square, Xero, Zoho
  /// where user needs to get RefreshToken offline
  final String? refreshToken;
  /// Required by QuickBooks and Xero connection categories
  final String? tenantId;
  /// Concur, ServiceNow auth server AccessToken grant type is 'Password'
  /// which requires UsernamePassword
  final String? username;

  /// Creates a new [ConnectionOAuth2Response].
  /// [authUrl] Required by Concur connection category
  /// [clientId] Client id in the format of UUID
  /// [clientSecret] Optional.
  /// [developerToken] Required by GoogleAdWords connection category
  /// [password] Optional.
  /// [refreshToken] Required by GoogleBigQuery, GoogleAdWords, Hubspot, QuickBooks, Square, Xero, Zoho
  /// [tenantId] Required by QuickBooks and Xero connection categories
  /// [username] Concur, ServiceNow auth server AccessToken grant type is 'Password'
  ConnectionOAuth2Response({
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

  factory ConnectionOAuth2Response.fromMap(Map<String, dynamic> map) {
    return ConnectionOAuth2Response(
      authUrl: map['authUrl'] == null ? null : map['authUrl'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      developerToken: map['developerToken'] == null ? null : map['developerToken'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

