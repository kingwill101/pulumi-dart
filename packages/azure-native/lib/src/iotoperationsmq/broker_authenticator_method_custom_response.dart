// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_custom_auth_response.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustomResponse {
  /// Custom Broker Authentication Method.
  final BrokerAuthenticatorCustomAuthResponse? auth;
  /// CA cert config map to use.
  final String? caCertConfigMap;
  /// Endpoint to connect to.
  final String endpoint;
  /// Configuration Headers to use.
  final Map<String, String>? headers;

  /// Creates a new [BrokerAuthenticatorMethodCustomResponse].
  /// [auth] Custom Broker Authentication Method.
  /// [caCertConfigMap] CA cert config map to use.
  /// [endpoint] Endpoint to connect to.
  /// [headers] Configuration Headers to use.
  BrokerAuthenticatorMethodCustomResponse({
    this.auth,
    this.caCertConfigMap,
    required this.endpoint,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : auth!.toMap(),
      'caCertConfigMap': ?caCertConfigMap,
      'endpoint': endpoint,
      'headers': ?headers,
    };
  }

  factory BrokerAuthenticatorMethodCustomResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodCustomResponse(
      auth: map['auth'] == null ? null : BrokerAuthenticatorCustomAuthResponse.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      caCertConfigMap: map['caCertConfigMap'] == null ? null : map['caCertConfigMap'] as String,
      endpoint: map['endpoint'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
    );
  }
}

