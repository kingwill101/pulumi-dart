// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_oauth_client_parameters.dart';
import 'event_connection_auth_parameters_oauth_oauth_http_parameters.dart';

class EventConnectionAuthParametersOauth {
  /// The URL to the authorization endpoint.
  final pulumi.Input<String> authorizationEndpoint;

  /// Contains the client parameters for OAuth authorization. Contains the following two parameters.
  final pulumi.Input<EventConnectionAuthParametersOauthClientParameters>?
  clientParameters;

  /// A password for the authorization. Created and stored in AWS Secrets Manager.
  final pulumi.Input<String> httpMethod;

  /// OAuth Http Parameters are additional credentials used to sign the request to the authorization endpoint to exchange the OAuth Client information for an access token. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  final pulumi.Input<EventConnectionAuthParametersOauthOauthHttpParameters>
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
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'clientParameters':
          ?pulumi.Input.mapOptionalInputValue<
            EventConnectionAuthParametersOauthClientParameters,
            Map<String, dynamic>
          >(clientParameters, (value) => value.toMap()),
      'httpMethod': httpMethod,
      'oauthHttpParameters':
          pulumi.Input.mapInputValue<
            EventConnectionAuthParametersOauthOauthHttpParameters,
            Map<String, dynamic>
          >(oauthHttpParameters, (value) => value.toMap()),
    };
  }

  factory EventConnectionAuthParametersOauth.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauth(
      authorizationEndpoint: pulumi.Input.fromValue(
        map['authorizationEndpoint'] as String,
      ),
      clientParameters: (() {
        final guardedValue = map['clientParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventConnectionAuthParametersOauthClientParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpMethod: pulumi.Input.fromValue(map['httpMethod'] as String),
      oauthHttpParameters: pulumi.Input.fromValue(
        EventConnectionAuthParametersOauthOauthHttpParameters.fromMap(
          (map['oauthHttpParameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
