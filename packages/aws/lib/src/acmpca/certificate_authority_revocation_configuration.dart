// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_revocation_configuration_crl_configuration.dart';
import 'certificate_authority_revocation_configuration_ocsp_configuration.dart';

class CertificateAuthorityRevocationConfiguration {
  /// Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
  final CertificateAuthorityRevocationConfigurationCrlConfiguration? crlConfiguration;
  /// Nested argument containing configuration of
  /// the custom OCSP responder endpoint. Defined below.
  final CertificateAuthorityRevocationConfigurationOcspConfiguration? ocspConfiguration;

  /// Creates a new [CertificateAuthorityRevocationConfiguration].
  /// [crlConfiguration] Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
  /// [ocspConfiguration] Nested argument containing configuration of
  CertificateAuthorityRevocationConfiguration({
    this.crlConfiguration,
    this.ocspConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crlConfiguration': ?crlConfiguration == null ? null : crlConfiguration!.toMap(),
      'ocspConfiguration': ?ocspConfiguration == null ? null : ocspConfiguration!.toMap(),
    };
  }

  factory CertificateAuthorityRevocationConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfiguration(
      crlConfiguration: map['crlConfiguration'] == null ? null : CertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap((map['crlConfiguration'] as Map).cast<String, dynamic>()),
      ocspConfiguration: map['ocspConfiguration'] == null ? null : CertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap((map['ocspConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

