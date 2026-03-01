// ignore_for_file: unused_element, unnecessary_cast

import 'connection_auth_parameters_api_key_auth_parameters.dart';
import 'connection_auth_parameters_basic_auth_parameters.dart';
import 'connection_auth_parameters_oauth_parameters.dart';

class ConnectionAuthParameters {
  /// The parameters that are configured for API key authentication. See `api_key_auth_parameters` below.
  final ConnectionAuthParametersApiKeyAuthParameters? apiKeyAuthParameters;
  /// The type of the authentication. Valid values: `API_KEY_AUTH`, `BASIC_AUTH`, `OAUTH_AUTH`.
  final String? authorizationType;
  /// The parameters that are configured for basic authentication. See `basic_auth_parameters` below.
  final ConnectionAuthParametersBasicAuthParameters? basicAuthParameters;
  /// The parameters that are configured for OAuth authentication. See `oauth_parameters` below.
  final ConnectionAuthParametersOauthParameters? oauthParameters;

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
      'apiKeyAuthParameters': ?apiKeyAuthParameters == null ? null : apiKeyAuthParameters!.toMap(),
      'authorizationType': ?authorizationType,
      'basicAuthParameters': ?basicAuthParameters == null ? null : basicAuthParameters!.toMap(),
      'oauthParameters': ?oauthParameters == null ? null : oauthParameters!.toMap(),
    };
  }

  factory ConnectionAuthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParameters(
      apiKeyAuthParameters: map['apiKeyAuthParameters'] == null ? null : ConnectionAuthParametersApiKeyAuthParameters.fromMap((map['apiKeyAuthParameters'] as Map).cast<String, dynamic>()),
      authorizationType: map['authorizationType'] == null ? null : map['authorizationType'] as String,
      basicAuthParameters: map['basicAuthParameters'] == null ? null : ConnectionAuthParametersBasicAuthParameters.fromMap((map['basicAuthParameters'] as Map).cast<String, dynamic>()),
      oauthParameters: map['oauthParameters'] == null ? null : ConnectionAuthParametersOauthParameters.fromMap((map['oauthParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

