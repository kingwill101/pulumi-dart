// ignore_for_file: unused_element, unnecessary_cast


/// Single sign-on related configuration
class SsoProperties {
  /// The public identifier for the application
  final String? clientId;
  /// The secret known only to the application and the authorization server
  final String? clientSecret;
  /// The URI of Issuer Identifier
  final String? issuerUri;
  /// It defines the specific actions applications can be allowed to do on a user's behalf
  final List<String>? scope;

  /// Creates a new [SsoProperties].
  /// [clientId] The public identifier for the application
  /// [clientSecret] The secret known only to the application and the authorization server
  /// [issuerUri] The URI of Issuer Identifier
  /// [scope] It defines the specific actions applications can be allowed to do on a user's behalf
  SsoProperties({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'issuerUri': ?issuerUri,
      'scope': ?scope,
    };
  }

  factory SsoProperties.fromMap(Map<String, dynamic> map) {
    return SsoProperties(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      issuerUri: map['issuerUri'] == null ? null : map['issuerUri'] as String,
      scope: map['scope'] == null ? null : (map['scope'] as List).cast<String>(),
    );
  }
}

