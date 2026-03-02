// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateResponse {
  /// PEM formatted public key.
  final pulumi.Input<String>? pem;

  /// Creates a new [CertificateResponse].
  /// [pem] PEM formatted public key.
  CertificateResponse({
    this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pem': ?pem,
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      pem: map['pem'] == null ? null : (map['pem']! as String).input(),
    );
  }
}

