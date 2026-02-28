// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_certificate_response.dart';

/// A server-stored registry credential used to validate device credentials.
class RegistryCredentialResponse {
  /// A public key certificate used to verify the device credentials.
  final PublicKeyCertificateResponse publicKeyCertificate;

  /// Creates a new [RegistryCredentialResponse].
  /// [publicKeyCertificate] A public key certificate used to verify the device credentials.
  RegistryCredentialResponse({
    required this.publicKeyCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicKeyCertificate'] = publicKeyCertificate.toMap();
    return map;
  }

  factory RegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialResponse(
      publicKeyCertificate: PublicKeyCertificateResponse.fromMap(
          (map['publicKeyCertificate'] as Map).cast<String, dynamic>()),
    );
  }
}
