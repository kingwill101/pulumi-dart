// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_manual_certificate.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuth {
  /// X509 Custom Auth type details.
  final pulumi.Input<X509ManualCertificate> x509;

  /// Creates a new [BrokerAuthenticatorCustomAuth].
  /// [x509] X509 Custom Auth type details.
  const BrokerAuthenticatorCustomAuth({
    required this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509': pulumi.Input.mapInputValue<X509ManualCertificate, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorCustomAuth.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuth(
      x509: pulumi.Input.fromValue(X509ManualCertificate.fromMap((map['x509']! as Map).cast<String, dynamic>())),
    );
  }
}

