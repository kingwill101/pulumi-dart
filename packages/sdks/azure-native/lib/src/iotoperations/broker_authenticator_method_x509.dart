// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_x509_attributes.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509 {
  /// X509 authorization attributes properties.
  final pulumi.Input<Map<String, BrokerAuthenticatorMethodX509Attributes>>? authorizationAttributes;
  /// Name of the trusted client ca cert resource.
  final pulumi.Input<String>? trustedClientCaCert;

  /// Creates a new [BrokerAuthenticatorMethodX509].
  /// [authorizationAttributes] X509 authorization attributes properties.
  /// [trustedClientCaCert] Name of the trusted client ca cert resource.
  BrokerAuthenticatorMethodX509({
    this.authorizationAttributes,
    this.trustedClientCaCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttributes': ?pulumi.Input.mapOptionalInputValue<Map<String, BrokerAuthenticatorMethodX509Attributes>, Map<String, Map<String, dynamic>>>(authorizationAttributes, (value) => pulumi.Input.encodeMapValues<BrokerAuthenticatorMethodX509Attributes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedClientCaCert': ?trustedClientCaCert,
    };
  }

  factory BrokerAuthenticatorMethodX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509(
      authorizationAttributes: (() { final guardedValue = map['authorizationAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<BrokerAuthenticatorMethodX509Attributes>(guardedValue, (value) => BrokerAuthenticatorMethodX509Attributes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustedClientCaCert: (() { final guardedValue = map['trustedClientCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

