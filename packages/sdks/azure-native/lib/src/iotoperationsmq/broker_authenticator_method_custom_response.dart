// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_custom_auth_response.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustomResponse {
  /// Custom Broker Authentication Method.
  final pulumi.Input<BrokerAuthenticatorCustomAuthResponse?>? auth;
  /// CA cert config map to use.
  final pulumi.Input<String?>? caCertConfigMap;
  /// Endpoint to connect to.
  final pulumi.Input<String> endpoint;
  /// Configuration Headers to use.
  final pulumi.Input<Map<String, String>?>? headers;

  /// Creates a new [BrokerAuthenticatorMethodCustomResponse].
  /// [auth] Custom Broker Authentication Method.
  /// [caCertConfigMap] CA cert config map to use.
  /// [endpoint] Endpoint to connect to.
  /// [headers] Configuration Headers to use.
  const BrokerAuthenticatorMethodCustomResponse({
    this.auth,
    this.caCertConfigMap,
    required this.endpoint,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorCustomAuthResponse, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'caCertConfigMap': ?caCertConfigMap,
      'endpoint': endpoint,
      'headers': ?headers,
    };
  }

  factory BrokerAuthenticatorMethodCustomResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodCustomResponse(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorCustomAuthResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      caCertConfigMap: (() { final guardedValue = map['caCertConfigMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
