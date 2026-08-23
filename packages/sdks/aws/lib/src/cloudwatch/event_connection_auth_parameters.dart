// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_api_key.dart';
import 'event_connection_auth_parameters_basic.dart';
import 'event_connection_auth_parameters_connectivity_parameters.dart';
import 'event_connection_auth_parameters_invocation_http_parameters.dart';
import 'event_connection_auth_parameters_oauth.dart';

class EventConnectionAuthParameters {
  /// Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with `basic` and `oauth`. Documented below.
  final pulumi.Input<EventConnectionAuthParametersApiKey>? apiKey;
  /// Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with `apiKey` and `oauth`. Documented below.
  final pulumi.Input<EventConnectionAuthParametersBasic>? basic;
  /// Parameters used for `oauth` with private API. Documented below.
  final pulumi.Input<EventConnectionAuthParametersConnectivityParameters>? connectivityParameters;
  /// Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  final pulumi.Input<EventConnectionAuthParametersInvocationHttpParameters>? invocationHttpParameters;
  /// Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with `basic` and `apiKey`. Documented below.
  final pulumi.Input<EventConnectionAuthParametersOauth>? oauth;

  /// Creates a new [EventConnectionAuthParameters].
  /// [apiKey] Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with `basic` and `oauth`. Documented below.
  /// [basic] Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with `apiKey` and `oauth`. Documented below.
  /// [connectivityParameters] Parameters used for `oauth` with private API. Documented below.
  /// [invocationHttpParameters] Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.
  /// [oauth] Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with `basic` and `apiKey`. Documented below.
  const EventConnectionAuthParameters({
    this.apiKey,
    this.basic,
    this.connectivityParameters,
    this.invocationHttpParameters,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParametersApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'basic': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParametersBasic, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'connectivityParameters': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParametersConnectivityParameters, Map<String, dynamic>>(connectivityParameters, (value) => value.toMap()),
      'invocationHttpParameters': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParametersInvocationHttpParameters, Map<String, dynamic>>(invocationHttpParameters, (value) => value.toMap()),
      'oauth': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParametersOauth, Map<String, dynamic>>(oauth, (value) => value.toMap()),
    };
  }

  factory EventConnectionAuthParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParameters(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventConnectionAuthParametersApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventConnectionAuthParametersBasic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectivityParameters: (() { final guardedValue = map['connectivityParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventConnectionAuthParametersConnectivityParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      invocationHttpParameters: (() { final guardedValue = map['invocationHttpParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventConnectionAuthParametersInvocationHttpParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth: (() { final guardedValue = map['oauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventConnectionAuthParametersOauth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
