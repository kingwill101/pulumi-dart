// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_certificate_format.dart';

/// A public key certificate format and data.
class PublicKeyCertificate {
  /// The certificate data.
  final String? certificate;

  /// The certificate format.
  final PublicKeyCertificateFormat? format;

  PublicKeyCertificate({
    this.certificate,
    this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue.value;
    }
    return map;
  }

  factory PublicKeyCertificate.fromMap(Map<String, dynamic> map) {
    return PublicKeyCertificate(
      certificate:
          map['certificate'] == null ? null : map['certificate'] as String,
      format: map['format'] == null
          ? null
          : PublicKeyCertificateFormat.fromValue(map['format'] as String),
    );
  }
}
