// ignore_for_file: unused_element, unnecessary_cast

import 'x509_certificate_details_response.dart';

/// A public key certificate format and data.
class PublicKeyCertificateResponse {
  /// The certificate data.
  final String certificate;

  /// The certificate format.
  final String format;

  /// [Output only] The certificate details. Used only for X.509 certificates.
  final X509CertificateDetailsResponse x509Details;

  /// Creates a new [PublicKeyCertificateResponse].
  /// [certificate] The certificate data.
  /// [format] The certificate format.
  /// [x509Details] [Output only] The certificate details. Used only for X.509 certificates.
  PublicKeyCertificateResponse({
    required this.certificate,
    required this.format,
    required this.x509Details,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'format': format,
      'x509Details': x509Details.toMap(),
    };
  }

  factory PublicKeyCertificateResponse.fromMap(Map<String, dynamic> map) {
    return PublicKeyCertificateResponse(
      certificate: map['certificate'] as String,
      format: map['format'] as String,
      x509Details: X509CertificateDetailsResponse.fromMap(
        (map['x509Details'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
