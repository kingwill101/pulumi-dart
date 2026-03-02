// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters_oauth_parameters_client_parameters.dart';
import 'connection_auth_parameters_oauth_parameters_oauth_http_parameters.dart';

class ConnectionAuthParametersOauthParameters {
  /// The IP address of the authorized endpoint.
  final pulumi.Input<String>? authorizationEndpoint;
  /// The parameters that are configured for the client. See `client_parameters` below.
  final pulumi.Input<ConnectionAuthParametersOauthParametersClientParameters>? clientParameters;
  /// The HTTP request method. Valid values: `GET`, `POST`, `HEAD`, `DELETE`, `PUT`, `PATCH`.
  final pulumi.Input<String>? httpMethod;
  /// The request parameters that are configured for OAuth authentication. See `oauth_http_parameters` below.
  final pulumi.Input<ConnectionAuthParametersOauthParametersOauthHttpParameters>? oauthHttpParameters;

  /// Creates a new [ConnectionAuthParametersOauthParameters].
  /// [authorizationEndpoint] The IP address of the authorized endpoint.
  /// [clientParameters] The parameters that are configured for the client. See `client_parameters` below.
  /// [httpMethod] The HTTP request method. Valid values: `GET`, `POST`, `HEAD`, `DELETE`, `PUT`, `PATCH`.
  /// [oauthHttpParameters] The request parameters that are configured for OAuth authentication. See `oauth_http_parameters` below.
  ConnectionAuthParametersOauthParameters({
    this.authorizationEndpoint,
    this.clientParameters,
    this.httpMethod,
    this.oauthHttpParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'clientParameters': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthParametersOauthParametersClientParameters, Map<String, dynamic>>(clientParameters, (value) => value.toMap()),
      'httpMethod': ?httpMethod,
      'oauthHttpParameters': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthParametersOauthParametersOauthHttpParameters, Map<String, dynamic>>(oauthHttpParameters, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthParametersOauthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParameters(
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : (map['authorizationEndpoint'] as String).input(),
      clientParameters: map['clientParameters'] == null ? null : (ConnectionAuthParametersOauthParametersClientParameters.fromMap((map['clientParameters'] as Map).cast<String, dynamic>())).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod'] as String).input(),
      oauthHttpParameters: map['oauthHttpParameters'] == null ? null : (ConnectionAuthParametersOauthParametersOauthHttpParameters.fromMap((map['oauthHttpParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

