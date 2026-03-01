// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_custom_auth.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustom {
  /// Custom Broker Authentication Method.
  final BrokerAuthenticatorCustomAuth? auth;
  /// CA cert config map to use.
  final String? caCertConfigMap;
  /// Endpoint to connect to.
  final String endpoint;
  /// Configuration Headers to use.
  final Map<String, String>? headers;

  /// Creates a new [BrokerAuthenticatorMethodCustom].
  /// [auth] Custom Broker Authentication Method.
  /// [caCertConfigMap] CA cert config map to use.
  /// [endpoint] Endpoint to connect to.
  /// [headers] Configuration Headers to use.
  BrokerAuthenticatorMethodCustom({
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

  factory BrokerAuthenticatorMethodCustom.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodCustom(
      auth: map['auth'] == null ? null : BrokerAuthenticatorCustomAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      caCertConfigMap: map['caCertConfigMap'] == null ? null : map['caCertConfigMap'] as String,
      endpoint: map['endpoint'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
    );
  }
}

