// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_x509_attributes_response.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509Response {
  /// X509 authorization attributes properties.
  final pulumi.Input<Map<String, BrokerAuthenticatorMethodX509AttributesResponse>>? authorizationAttributes;
  /// Name of the trusted client ca cert resource.
  final pulumi.Input<String>? trustedClientCaCert;

  /// Creates a new [BrokerAuthenticatorMethodX509Response].
  /// [authorizationAttributes] X509 authorization attributes properties.
  /// [trustedClientCaCert] Name of the trusted client ca cert resource.
  BrokerAuthenticatorMethodX509Response({
    this.authorizationAttributes,
    this.trustedClientCaCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttributes': ?pulumi.Input.mapOptionalInputValue<Map<String, BrokerAuthenticatorMethodX509AttributesResponse>, Map<String, Map<String, dynamic>>>(authorizationAttributes, (value) => pulumi.Input.encodeMapValues<BrokerAuthenticatorMethodX509AttributesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedClientCaCert': ?trustedClientCaCert,
    };
  }

  factory BrokerAuthenticatorMethodX509Response.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509Response(
      authorizationAttributes: map['authorizationAttributes'] == null ? null : (pulumi.Input.decodeMapValues<BrokerAuthenticatorMethodX509AttributesResponse>(map['authorizationAttributes'], (value) => BrokerAuthenticatorMethodX509AttributesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustedClientCaCert: map['trustedClientCaCert'] == null ? null : (map['trustedClientCaCert'] as String).input(),
    );
  }
}

