// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_x509_attributes_response.dart';

/// X509 for BrokerAuthentication.
class BrokerAuthenticatorMethodX509Response {
  /// K8S Secret name to mount for username and password.
  final pulumi.Input<BrokerAuthenticatorMethodX509AttributesResponse>? attributes;
  /// Trusted client ca cert config map.
  final pulumi.Input<String>? trustedClientCaCertConfigMap;

  /// Creates a new [BrokerAuthenticatorMethodX509Response].
  /// [attributes] K8S Secret name to mount for username and password.
  /// [trustedClientCaCertConfigMap] Trusted client ca cert config map.
  BrokerAuthenticatorMethodX509Response({
    this.attributes,
    this.trustedClientCaCertConfigMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509AttributesResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'trustedClientCaCertConfigMap': ?trustedClientCaCertConfigMap,
    };
  }

  factory BrokerAuthenticatorMethodX509Response.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509Response(
      attributes: map['attributes'] == null ? null : (BrokerAuthenticatorMethodX509AttributesResponse.fromMap((map['attributes']! as Map).cast<String, dynamic>())).input(),
      trustedClientCaCertConfigMap: map['trustedClientCaCertConfigMap'] == null ? null : (map['trustedClientCaCertConfigMap']! as String).input(),
    );
  }
}

