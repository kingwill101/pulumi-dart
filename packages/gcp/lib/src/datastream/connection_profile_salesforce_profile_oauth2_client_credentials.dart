// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileSalesforceProfileOauth2ClientCredentials {
  /// Client ID to use for authentication.
  final String? clientId;

  /// Client secret to use for authentication.
  final String? clientSecret;

  /// A reference to a Secret Manager resource name storing the client secret.
  final String? secretManagerStoredClientSecret;

  /// Creates a new [ConnectionProfileSalesforceProfileOauth2ClientCredentials].
  /// [clientId] Client ID to use for authentication.
  /// [clientSecret] Client secret to use for authentication.
  /// [secretManagerStoredClientSecret] A reference to a Secret Manager resource name storing the client secret.
  ConnectionProfileSalesforceProfileOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.secretManagerStoredClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'secretManagerStoredClientSecret': ?secretManagerStoredClientSecret,
    };
  }

  factory ConnectionProfileSalesforceProfileOauth2ClientCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionProfileSalesforceProfileOauth2ClientCredentials(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : map['clientSecret'] as String,
      secretManagerStoredClientSecret:
          map['secretManagerStoredClientSecret'] == null
          ? null
          : map['secretManagerStoredClientSecret'] as String,
    );
  }
}
