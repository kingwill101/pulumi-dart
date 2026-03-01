// ignore_for_file: unused_element, unnecessary_cast

import 'x509_manual_certificate.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuth {
  /// X509 Custom Auth type details.
  final X509ManualCertificate x509;

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
      x509: X509ManualCertificate.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

