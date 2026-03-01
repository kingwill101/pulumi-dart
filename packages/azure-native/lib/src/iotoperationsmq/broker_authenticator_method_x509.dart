// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_method_x509_attributes.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509 {
  /// K8S Secret name to mount for username and password.
  final BrokerAuthenticatorMethodX509Attributes? attributes;
  /// Trusted client ca cert config map.
  final String? trustedClientCaCertConfigMap;

  /// Creates a new [BrokerAuthenticatorMethodX509].
  /// [attributes] K8S Secret name to mount for username and password.
  /// [trustedClientCaCertConfigMap] Trusted client ca cert config map.
  BrokerAuthenticatorMethodX509({
    this.attributes,
    this.trustedClientCaCertConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : attributes!.toMap(),
      'trustedClientCaCertConfigMap': ?trustedClientCaCertConfigMap,
    };
  }

  factory BrokerAuthenticatorMethodX509.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509(
      attributes: map['attributes'] == null ? null : BrokerAuthenticatorMethodX509Attributes.fromMap((map['attributes'] as Map).cast<String, dynamic>()),
      trustedClientCaCertConfigMap: map['trustedClientCaCertConfigMap'] == null ? null : map['trustedClientCaCertConfigMap'] as String,
    );
  }
}

