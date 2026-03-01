// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_certificate_format.dart';

/// A public key certificate format and data.
class PublicKeyCertificate {
  /// The certificate data.
  final String? certificate;

  /// The certificate format.
  final PublicKeyCertificateFormat? format;

  /// Creates a new [PublicKeyCertificate].
  /// [certificate] The certificate data.
  /// [format] The certificate format.
  PublicKeyCertificate({this.certificate, this.format});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'format': ?format == null ? null : format!.value,
    };
  }

  factory PublicKeyCertificate.fromMap(Map<String, dynamic> map) {
    return PublicKeyCertificate(
      certificate: map['certificate'] == null
          ? null
          : map['certificate'] as String,
      format: map['format'] == null
          ? null
          : PublicKeyCertificateFormat.fromValue(map['format'] as String),
    );
  }
}
