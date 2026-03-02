// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_custom_auth.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustom {
  /// Optional authentication needed for authenticating with the custom authentication server.
  final pulumi.Input<BrokerAuthenticatorCustomAuth>? auth;
  /// Optional CA certificate for validating the custom authentication server's certificate.
  final pulumi.Input<String>? caCertConfigMap;
  /// Endpoint of the custom authentication server. Must be an HTTPS endpoint.
  final pulumi.Input<String> endpoint;
  /// Additional HTTP headers to pass to the custom authentication server.
  final pulumi.Input<Map<String, String>>? headers;

  /// Creates a new [BrokerAuthenticatorMethodCustom].
  /// [auth] Optional authentication needed for authenticating with the custom authentication server.
  /// [caCertConfigMap] Optional CA certificate for validating the custom authentication server's certificate.
  /// [endpoint] Endpoint of the custom authentication server. Must be an HTTPS endpoint.
  /// [headers] Additional HTTP headers to pass to the custom authentication server.
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
      auth: map['auth'] == null ? null : (BrokerAuthenticatorCustomAuth.fromMap((map['auth'] as Map).cast<String, dynamic>())).input(),
      caCertConfigMap: map['caCertConfigMap'] == null ? null : (map['caCertConfigMap'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
    );
  }
}

