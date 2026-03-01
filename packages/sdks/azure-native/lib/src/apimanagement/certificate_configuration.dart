// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_information.dart';

/// Certificate configuration which consist of non-trusted intermediates and root certificates.
class CertificateConfiguration {
  /// Certificate information.
  final CertificateInformation? certificate;
  /// Certificate Password.
  final String? certificatePassword;
  /// Base64 Encoded certificate.
  final String? encodedCertificate;
  /// The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  final String storeName;

  /// Creates a new [CertificateConfiguration].
  /// [certificate] Certificate information.
  /// [certificatePassword] Certificate Password.
  /// [encodedCertificate] Base64 Encoded certificate.
  /// [storeName] The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  CertificateConfiguration({
    this.certificate,
    this.certificatePassword,
    this.encodedCertificate,
    required this.storeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate == null ? null : certificate!.toMap(),
      'certificatePassword': ?certificatePassword,
      'encodedCertificate': ?encodedCertificate,
      'storeName': storeName,
    };
  }

  factory CertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateConfiguration(
      certificate: map['certificate'] == null ? null : CertificateInformation.fromMap((map['certificate'] as Map).cast<String, dynamic>()),
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      encodedCertificate: map['encodedCertificate'] == null ? null : map['encodedCertificate'] as String,
      storeName: map['storeName'] as String,
    );
  }
}

