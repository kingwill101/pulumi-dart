// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response2.dart';

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentialsResponse {
  /// The client identifier.
  final String clientId;

  /// Secret version reference containing the client secret.
  final SecretResponse2 clientSecret;

  Oauth2ClientCredentialsResponse({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret.toMap();
    return map;
  }

  factory Oauth2ClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return Oauth2ClientCredentialsResponse(
      clientId: map['clientId'] as String,
      clientSecret: SecretResponse2.fromMap(
          (map['clientSecret'] as Map).cast<String, dynamic>()),
    );
  }
}
