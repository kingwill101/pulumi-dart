// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_custom_auth_response.dart';

/// Custom method for BrokerAuthentication
class BrokerAuthenticatorMethodCustomResponse {
  /// Optional authentication needed for authenticating with the custom authentication server.
  final pulumi.Input<BrokerAuthenticatorCustomAuthResponse>? auth;
  /// Optional CA certificate for validating the custom authentication server's certificate.
  final pulumi.Input<String>? caCertConfigMap;
  /// Endpoint of the custom authentication server. Must be an HTTPS endpoint.
  final pulumi.Input<String> endpoint;
  /// Additional HTTP headers to pass to the custom authentication server.
  final pulumi.Input<Map<String, String>>? headers;

  /// Creates a new [BrokerAuthenticatorMethodCustomResponse].
  /// [auth] Optional authentication needed for authenticating with the custom authentication server.
  /// [caCertConfigMap] Optional CA certificate for validating the custom authentication server's certificate.
  /// [endpoint] Endpoint of the custom authentication server. Must be an HTTPS endpoint.
  /// [headers] Additional HTTP headers to pass to the custom authentication server.
  BrokerAuthenticatorMethodCustomResponse({
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
      auth: map['auth'] == null ? null : (BrokerAuthenticatorCustomAuthResponse.fromMap((map['auth'] as Map).cast<String, dynamic>())).input(),
      caCertConfigMap: map['caCertConfigMap'] == null ? null : (map['caCertConfigMap'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
    );
  }
}

