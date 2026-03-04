// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters_api_key_auth_parameters.dart';
import 'connection_auth_parameters_basic_auth_parameters.dart';
import 'connection_auth_parameters_oauth_parameters.dart';

class ConnectionAuthParameters {
  /// The parameters that are configured for API key authentication. See `api_key_auth_parameters` below.
  final pulumi.Input<ConnectionAuthParametersApiKeyAuthParameters>?
  apiKeyAuthParameters;

  /// The type of the authentication. Valid values: `API_KEY_AUTH`, `BASIC_AUTH`, `OAUTH_AUTH`.
  final pulumi.Input<String>? authorizationType;

  /// The parameters that are configured for basic authentication. See `basic_auth_parameters` below.
  final pulumi.Input<ConnectionAuthParametersBasicAuthParameters>?
  basicAuthParameters;

  /// The parameters that are configured for OAuth authentication. See `oauth_parameters` below.
  final pulumi.Input<ConnectionAuthParametersOauthParameters>? oauthParameters;

  /// Creates a new [ConnectionAuthParameters].
  /// [apiKeyAuthParameters] The parameters that are configured for API key authentication. See `api_key_auth_parameters` below.
  /// [authorizationType] The type of the authentication. Valid values: `API_KEY_AUTH`, `BASIC_AUTH`, `OAUTH_AUTH`.
  /// [basicAuthParameters] The parameters that are configured for basic authentication. See `basic_auth_parameters` below.
  /// [oauthParameters] The parameters that are configured for OAuth authentication. See `oauth_parameters` below.
  ConnectionAuthParameters({
    this.apiKeyAuthParameters,
    this.authorizationType,
    this.basicAuthParameters,
    this.oauthParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyAuthParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthParametersApiKeyAuthParameters,
            Map<String, dynamic>
          >(apiKeyAuthParameters, (value) => value.toMap()),
      'authorizationType': ?authorizationType,
      'basicAuthParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthParametersBasicAuthParameters,
            Map<String, dynamic>
          >(basicAuthParameters, (value) => value.toMap()),
      'oauthParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthParametersOauthParameters,
            Map<String, dynamic>
          >(oauthParameters, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParameters(
      apiKeyAuthParameters: (() {
        final guardedValue = map['apiKeyAuthParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthParametersApiKeyAuthParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      authorizationType: (() {
        final guardedValue = map['authorizationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      basicAuthParameters: (() {
        final guardedValue = map['basicAuthParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthParametersBasicAuthParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauthParameters: (() {
        final guardedValue = map['oauthParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthParametersOauthParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
