// ignore_for_file: unused_element, unnecessary_cast

import '../certificate_authority_revocation_configuration_crl_configuration/certificate_authority_revocation_configuration_crl_configuration.dart';
import '../certificate_authority_revocation_configuration_ocsp_configuration/certificate_authority_revocation_configuration_ocsp_configuration.dart';

class CertificateAuthorityRevocationConfiguration {
  /// Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
  final CertificateAuthorityRevocationConfigurationCrlConfiguration?
      crlConfiguration;

  /// Nested argument containing configuration of
  /// the custom OCSP responder endpoint. Defined below.
  final CertificateAuthorityRevocationConfigurationOcspConfiguration?
      ocspConfiguration;

  CertificateAuthorityRevocationConfiguration({
    this.crlConfiguration,
    this.ocspConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crlConfigurationValue = crlConfiguration;
    if (crlConfigurationValue != null) {
      map['crlConfiguration'] = crlConfigurationValue.toMap();
    }
    final ocspConfigurationValue = ocspConfiguration;
    if (ocspConfigurationValue != null) {
      map['ocspConfiguration'] = ocspConfigurationValue.toMap();
    }
    return map;
  }

  factory CertificateAuthorityRevocationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfiguration(
      crlConfiguration: map['crlConfiguration'] == null
          ? null
          : CertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap(
              (map['crlConfiguration'] as Map).cast<String, dynamic>()),
      ocspConfiguration: map['ocspConfiguration'] == null
          ? null
          : CertificateAuthorityRevocationConfigurationOcspConfiguration
              .fromMap(
                  (map['ocspConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
