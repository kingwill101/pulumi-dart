// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_custom_auth_x509.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuth {
  /// X509 Custom Auth type details.
  final BrokerAuthenticatorCustomAuthX509 x509;

  /// Creates a new [BrokerAuthenticatorCustomAuth].
  /// [x509] X509 Custom Auth type details.
  BrokerAuthenticatorCustomAuth({
    required this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509': x509.toMap(),
    };
  }

  factory BrokerAuthenticatorCustomAuth.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuth(
      x509: BrokerAuthenticatorCustomAuthX509.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

