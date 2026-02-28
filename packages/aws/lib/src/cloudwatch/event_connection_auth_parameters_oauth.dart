// ignore_for_file: unused_element, unnecessary_cast

import 'event_connection_auth_parameters_oauth_client_parameters.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters.dart';

class EventConnectionAuthParametersOauth {
  /// The URL to the authorization endpoint.
  final String authorizationEndpoint;

  /// Contains the client parameters for OAuth authorization. Contains the following two parameters.
  final EventConnectionAuthParametersOauthClientParameters? clientParameters;

  /// A password for the authorization. Created and stored in AWS Secrets Manager.
  final String httpMethod;

  /// OAuth Http Parameters are additional credentials used to sign the request to the authorization endpoint to exchange the OAuth Client information for an access token. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  final EventConnectionAuthParametersOauthOauthHttpParameters
      oauthHttpParameters;

  /// Creates a new [EventConnectionAuthParametersOauth].
  /// [authorizationEndpoint] The URL to the authorization endpoint.
  /// [clientParameters] Contains the client parameters for OAuth authorization. Contains the following two parameters.
  /// [httpMethod] A password for the authorization. Created and stored in AWS Secrets Manager.
  /// [oauthHttpParameters] OAuth Http Parameters are additional credentials used to sign the request to the authorization endpoint to exchange the OAuth Client information for an access token. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  EventConnectionAuthParametersOauth({
    required this.authorizationEndpoint,
    this.clientParameters,
    required this.httpMethod,
    required this.oauthHttpParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationEndpoint'] = authorizationEndpoint;
    final clientParametersValue = clientParameters;
    if (clientParametersValue != null) {
      map['clientParameters'] = clientParametersValue.toMap();
    }
    map['httpMethod'] = httpMethod;
    map['oauthHttpParameters'] = oauthHttpParameters.toMap();
    return map;
  }

  factory EventConnectionAuthParametersOauth.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauth(
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      clientParameters: map['clientParameters'] == null
          ? null
          : EventConnectionAuthParametersOauthClientParameters.fromMap(
              (map['clientParameters'] as Map).cast<String, dynamic>()),
      httpMethod: map['httpMethod'] as String,
      oauthHttpParameters:
          EventConnectionAuthParametersOauthOauthHttpParameters.fromMap(
              (map['oauthHttpParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
