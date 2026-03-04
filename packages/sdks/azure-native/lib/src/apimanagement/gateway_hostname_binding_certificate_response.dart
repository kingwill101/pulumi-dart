// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayHostnameBindingCertificateResponse {
  /// The expiration date of the certificate.
  final pulumi.Input<String> expiry;

  /// The subject of the certificate.
  final pulumi.Input<String> subject;

  /// The thumbprint of the certificate.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [GatewayHostnameBindingCertificateResponse].
  /// [expiry] The expiration date of the certificate.
  /// [subject] The subject of the certificate.
  /// [thumbprint] The thumbprint of the certificate.
  GatewayHostnameBindingCertificateResponse({
    required this.expiry,
    required this.subject,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'subject': subject,
      'thumbprint': thumbprint,
    };
  }

  factory GatewayHostnameBindingCertificateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayHostnameBindingCertificateResponse(
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
