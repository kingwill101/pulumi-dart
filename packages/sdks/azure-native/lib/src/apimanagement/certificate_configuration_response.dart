// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_information_response.dart';

/// Certificate configuration which consist of non-trusted intermediates and root certificates.
class CertificateConfigurationResponse {
  /// Certificate information.
  final pulumi.Input<CertificateInformationResponse>? certificate;
  /// Certificate Password.
  final pulumi.Input<String>? certificatePassword;
  /// Base64 Encoded certificate.
  final pulumi.Input<String>? encodedCertificate;
  /// The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  final pulumi.Input<String> storeName;

  /// Creates a new [CertificateConfigurationResponse].
  /// [certificate] Certificate information.
  /// [certificatePassword] Certificate Password.
  /// [encodedCertificate] Base64 Encoded certificate.
  /// [storeName] The System.Security.Cryptography.x509certificates.StoreName certificate store location. Only Root and CertificateAuthority are valid locations.
  CertificateConfigurationResponse({
    this.certificate,
    this.certificatePassword,
    this.encodedCertificate,
    required this.storeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateInformationResponse, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'certificatePassword': ?certificatePassword,
      'encodedCertificate': ?encodedCertificate,
      'storeName': storeName,
    };
  }

  factory CertificateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CertificateConfigurationResponse(
      certificate: map['certificate'] == null ? null : (CertificateInformationResponse.fromMap((map['certificate'] as Map).cast<String, dynamic>())).input(),
      certificatePassword: map['certificatePassword'] == null ? null : (map['certificatePassword'] as String).input(),
      encodedCertificate: map['encodedCertificate'] == null ? null : (map['encodedCertificate'] as String).input(),
      storeName: (map['storeName'] as String).input(),
    );
  }
}

