// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_x509_attributes.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509 {
  /// K8S Secret name to mount for username and password.
  final pulumi.Input<BrokerAuthenticatorMethodX509Attributes?>? attributes;
  /// Trusted client ca cert config map.
  final pulumi.Input<String?>? trustedClientCaCertConfigMap;

  /// Creates a new [BrokerAuthenticatorMethodX509].
  /// [attributes] K8S Secret name to mount for username and password.
  /// [trustedClientCaCertConfigMap] Trusted client ca cert config map.
  BrokerAuthenticatorMethodX509({
    this.attributes,
    pulumi.Input<String?>? trustedClientCaCertConfigMap,
  }) : trustedClientCaCertConfigMap = trustedClientCaCertConfigMap ?? pulumi.Input.fromValue('client-ca');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509Attributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'trustedClientCaCertConfigMap': ?trustedClientCaCertConfigMap,
    };
  }

  factory BrokerAuthenticatorMethodX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodX509Attributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustedClientCaCertConfigMap: (() { final guardedValue = map['trustedClientCaCertConfigMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
