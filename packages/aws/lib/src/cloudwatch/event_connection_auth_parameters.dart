// ignore_for_file: unused_element, unnecessary_cast

import 'event_connection_auth_parameters_api_key.dart';
import 'event_connection_auth_parameters_basic.dart';
import 'event_connection_auth_parameters_invocation_http_parameters.dart';
import 'event_connection_auth_parameters_oauth.dart';

class EventConnectionAuthParameters {
  /// Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with `basic` and `oauth`. Documented below.
  final EventConnectionAuthParametersApiKey? apiKey;

  /// Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with `api_key` and `oauth`. Documented below.
  final EventConnectionAuthParametersBasic? basic;

  /// Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  final EventConnectionAuthParametersInvocationHttpParameters?
  invocationHttpParameters;

  /// Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with `basic` and `api_key`. Documented below.
  final EventConnectionAuthParametersOauth? oauth;

  /// Creates a new [EventConnectionAuthParameters].
  /// [apiKey] Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with `basic` and `oauth`. Documented below.
  /// [basic] Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with `api_key` and `oauth`. Documented below.
  /// [invocationHttpParameters] Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  /// [oauth] Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with `basic` and `api_key`. Documented below.
  EventConnectionAuthParameters({
    this.apiKey,
    this.basic,
    this.invocationHttpParameters,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey == null ? null : apiKey!.toMap(),
      'basic': ?basic == null ? null : basic!.toMap(),
      'invocationHttpParameters': ?invocationHttpParameters == null
          ? null
          : invocationHttpParameters!.toMap(),
      'oauth': ?oauth == null ? null : oauth!.toMap(),
    };
  }

  factory EventConnectionAuthParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParameters(
      apiKey: map['apiKey'] == null
          ? null
          : EventConnectionAuthParametersApiKey.fromMap(
              (map['apiKey'] as Map).cast<String, dynamic>(),
            ),
      basic: map['basic'] == null
          ? null
          : EventConnectionAuthParametersBasic.fromMap(
              (map['basic'] as Map).cast<String, dynamic>(),
            ),
      invocationHttpParameters: map['invocationHttpParameters'] == null
          ? null
          : EventConnectionAuthParametersInvocationHttpParameters.fromMap(
              (map['invocationHttpParameters'] as Map).cast<String, dynamic>(),
            ),
      oauth: map['oauth'] == null
          ? null
          : EventConnectionAuthParametersOauth.fromMap(
              (map['oauth'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
