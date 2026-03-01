// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_x509_attributes.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509 {
  /// X509 authorization attributes properties.
  final Map<String, BrokerAuthenticatorMethodX509Attributes>? authorizationAttributes;
  /// Name of the trusted client ca cert resource.
  final String? trustedClientCaCert;

  /// Creates a new [BrokerAuthenticatorMethodX509].
  /// [authorizationAttributes] X509 authorization attributes properties.
  /// [trustedClientCaCert] Name of the trusted client ca cert resource.
  BrokerAuthenticatorMethodX509({
    this.authorizationAttributes,
    this.trustedClientCaCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttributes': ?authorizationAttributes == null ? null : pulumi.Input.encodeMapValues<BrokerAuthenticatorMethodX509Attributes, Map<String, dynamic>>(authorizationAttributes!, (value) => value.toMap()),
      'trustedClientCaCert': ?trustedClientCaCert,
    };
  }

  factory BrokerAuthenticatorMethodX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509(
      authorizationAttributes: map['authorizationAttributes'] == null ? null : pulumi.Input.decodeMapValues<BrokerAuthenticatorMethodX509Attributes>(map['authorizationAttributes'], (value) => BrokerAuthenticatorMethodX509Attributes.fromMap((value as Map).cast<String, dynamic>())),
      trustedClientCaCert: map['trustedClientCaCert'] == null ? null : map['trustedClientCaCert'] as String,
    );
  }
}

