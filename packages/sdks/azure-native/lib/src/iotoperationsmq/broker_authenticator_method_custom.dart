// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_custom_auth.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustom {
  /// Custom Broker Authentication Method.
  final pulumi.Input<BrokerAuthenticatorCustomAuth>? auth;
  /// CA cert config map to use.
  final pulumi.Input<String>? caCertConfigMap;
  /// Endpoint to connect to.
  final pulumi.Input<String> endpoint;
  /// Configuration Headers to use.
  final pulumi.Input<Map<String, String>>? headers;

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
      'auth': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorCustomAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'caCertConfigMap': ?caCertConfigMap,
      'endpoint': endpoint,
      'headers': ?headers,
    };
  }

  factory BrokerAuthenticatorMethodCustom.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodCustom(
      auth: map['auth'] == null ? null : (BrokerAuthenticatorCustomAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      caCertConfigMap: map['caCertConfigMap'] == null ? null : (map['caCertConfigMap']! as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as Map).cast<String, String>()).input(),
    );
  }
}

