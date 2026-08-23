// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_custom_auth_x509.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuth {
  /// X509 Custom Auth type details.
  final pulumi.Input<BrokerAuthenticatorCustomAuthX509> x509;

  /// Creates a new [BrokerAuthenticatorCustomAuth].
  /// [x509] X509 Custom Auth type details.
  const BrokerAuthenticatorCustomAuth({
    required this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509': pulumi.Input.mapInputValue<BrokerAuthenticatorCustomAuthX509, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorCustomAuth.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuth(
      x509: pulumi.Input.fromValue(BrokerAuthenticatorCustomAuthX509.fromMap((map['x509']! as Map).cast<String, dynamic>())),
    );
  }
}
