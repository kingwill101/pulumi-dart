// ignore_for_file: unused_element, unnecessary_cast


/// Looker instance OAuth login settings.
class OAuthConfig {
  /// Input only. Client ID from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final String? clientId;
  /// Input only. Client secret from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final String? clientSecret;

  /// Creates a new [OAuthConfig].
  /// [clientId] Input only. Client ID from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  /// [clientSecret] Input only. Client secret from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  OAuthConfig({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory OAuthConfig.fromMap(Map<String, dynamic> map) {
    return OAuthConfig(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
    );
  }
}

