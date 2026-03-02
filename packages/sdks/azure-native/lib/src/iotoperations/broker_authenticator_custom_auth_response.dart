// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_manual_certificate_response.dart';

/// Custom Authentication properties
class BrokerAuthenticatorCustomAuthResponse {
  /// X509 Custom Auth type details.
  final pulumi.Input<X509ManualCertificateResponse> x509;

  /// Creates a new [BrokerAuthenticatorCustomAuthResponse].
  /// [x509] X509 Custom Auth type details.
  BrokerAuthenticatorCustomAuthResponse({
    required this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509': pulumi.Input.mapInputValue<X509ManualCertificateResponse, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorCustomAuthResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorCustomAuthResponse(
      x509: (X509ManualCertificateResponse.fromMap((map['x509'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

