// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_certificate.dart';

/// A server-stored registry credential used to validate device credentials.
class RegistryCredential {
  /// A public key certificate used to verify the device credentials.
  final PublicKeyCertificate? publicKeyCertificate;

  RegistryCredential({
    this.publicKeyCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicKeyCertificateValue = publicKeyCertificate;
    if (publicKeyCertificateValue != null) {
      map['publicKeyCertificate'] = publicKeyCertificateValue.toMap();
    }
    return map;
  }

  factory RegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryCredential(
      publicKeyCertificate: map['publicKeyCertificate'] == null
          ? null
          : PublicKeyCertificate.fromMap(
              (map['publicKeyCertificate'] as Map).cast<String, dynamic>()),
    );
  }
}
