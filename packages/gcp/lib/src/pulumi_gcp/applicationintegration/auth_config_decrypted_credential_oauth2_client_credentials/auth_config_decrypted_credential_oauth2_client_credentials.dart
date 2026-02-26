// ignore_for_file: unused_element, unnecessary_cast

import '../auth_config_decrypted_credential_oauth2_client_credentials_token_params/auth_config_decrypted_credential_oauth2_client_credentials_token_params.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentials {
  /// The client's ID.
  final String? clientId;

  /// The client's secret.
  final String? clientSecret;

  /// Represent how to pass parameters to fetch access token Possible values: ["REQUEST_TYPE_UNSPECIFIED", "REQUEST_BODY", "QUERY_PARAMETERS", "ENCODED_HEADER"]
  final String? requestType;

  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final String? tokenEndpoint;

  /// Token parameters for the auth request.
  final AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams?
      tokenParams;

  AuthConfigDecryptedCredentialOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
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
    final requestTypeValue = requestType;
    if (requestTypeValue != null) {
      map['requestType'] = requestTypeValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final tokenEndpointValue = tokenEndpoint;
    if (tokenEndpointValue != null) {
      map['tokenEndpoint'] = tokenEndpointValue;
    }
    final tokenParamsValue = tokenParams;
    if (tokenParamsValue != null) {
      map['tokenParams'] = tokenParamsValue.toMap();
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentials.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentials(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      requestType:
          map['requestType'] == null ? null : map['requestType'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint:
          map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
      tokenParams: map['tokenParams'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams
              .fromMap((map['tokenParams'] as Map).cast<String, dynamic>()),
    );
  }
}
