// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_custom_auth_x509_response.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuthResponse {
  /// X509 Custom Auth type details.
  final BrokerAuthenticatorCustomAuthX509Response x509;

  /// Creates a new [BrokerAuthenticatorCustomAuthResponse].
  /// [x509] X509 Custom Auth type details.
  BrokerAuthenticatorCustomAuthResponse({
    required this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509': x509.toMap(),
    };
  }

  factory BrokerAuthenticatorCustomAuthResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuthResponse(
      x509: BrokerAuthenticatorCustomAuthX509Response.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

