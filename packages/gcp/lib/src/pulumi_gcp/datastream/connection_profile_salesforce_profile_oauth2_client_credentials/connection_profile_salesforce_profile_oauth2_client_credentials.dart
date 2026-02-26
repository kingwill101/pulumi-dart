// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileSalesforceProfileOauth2ClientCredentials {
  /// Client ID to use for authentication.
  final String? clientId;

  /// Client secret to use for authentication.
  final String? clientSecret;

  /// A reference to a Secret Manager resource name storing the client secret.
  final String? secretManagerStoredClientSecret;

  ConnectionProfileSalesforceProfileOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.secretManagerStoredClientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final secretManagerStoredClientSecretValue =
        secretManagerStoredClientSecret;
    if (secretManagerStoredClientSecretValue != null) {
      map['secretManagerStoredClientSecret'] =
          secretManagerStoredClientSecretValue;
    }
    return map;
  }

  factory ConnectionProfileSalesforceProfileOauth2ClientCredentials.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileSalesforceProfileOauth2ClientCredentials(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      secretManagerStoredClientSecret:
          map['secretManagerStoredClientSecret'] == null
              ? null
              : map['secretManagerStoredClientSecret'] as String,
    );
  }
}
