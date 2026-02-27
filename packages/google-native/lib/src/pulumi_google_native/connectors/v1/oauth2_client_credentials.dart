// ignore_for_file: unused_element, unnecessary_cast

import 'secret_connectors_v1.dart';

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentials {
  /// The client identifier.
  final String? clientId;

  /// Secret version reference containing the client secret.
  final SecretConnectorsV1? clientSecret;

  Oauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue.toMap();
    }
    return map;
  }

  factory Oauth2ClientCredentials.fromMap(Map<String, dynamic> map) {
    return Oauth2ClientCredentials(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : SecretConnectorsV1.fromMap(
              (map['clientSecret'] as Map).cast<String, dynamic>()),
    );
  }
}
