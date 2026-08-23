// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_information.dart';

/// Certificate configuration which consist of non-trusted intermediates and root certificates.
class CertificateConfiguration {
  /// Certificate information.
  final pulumi.Input<CertificateInformation>? certificate;
  /// Certificate Password.
  final pulumi.Input<String>? certificatePassword;
  /// Base64 Encoded certificate.
  final pulumi.Input<String>? encodedCertificate;
  /// The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  final pulumi.Input<String> storeName;

  /// Creates a new [CertificateConfiguration].
  /// [certificate] Certificate information.
  /// [certificatePassword] Certificate Password.
  /// [encodedCertificate] Base64 Encoded certificate.
  /// [storeName] The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  const CertificateConfiguration({
    this.certificate,
    this.certificatePassword,
    this.encodedCertificate,
    required this.storeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateInformation, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'certificatePassword': ?certificatePassword,
      'encodedCertificate': ?encodedCertificate,
      'storeName': storeName,
    };
  }

  factory CertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateConfiguration(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificatePassword: (() { final guardedValue = map['certificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedCertificate: (() { final guardedValue = map['encodedCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeName: pulumi.Input.fromValue(map['storeName'] as String),
    );
  }
}
