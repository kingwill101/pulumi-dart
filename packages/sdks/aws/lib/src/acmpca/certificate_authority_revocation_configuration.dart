// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_revocation_configuration_crl_configuration.dart';
import 'certificate_authority_revocation_configuration_ocsp_configuration.dart';

class CertificateAuthorityRevocationConfiguration {
  /// Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
  final pulumi.Input<CertificateAuthorityRevocationConfigurationCrlConfiguration>? crlConfiguration;
  /// Nested argument containing configuration of
  /// the custom OCSP responder endpoint. Defined below.
  final pulumi.Input<CertificateAuthorityRevocationConfigurationOcspConfiguration>? ocspConfiguration;

  /// Creates a new [CertificateAuthorityRevocationConfiguration].
  /// [crlConfiguration] Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below.
  /// [ocspConfiguration] Nested argument containing configuration of
  CertificateAuthorityRevocationConfiguration({
    this.crlConfiguration,
    this.ocspConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crlConfiguration': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityRevocationConfigurationCrlConfiguration, Map<String, dynamic>>(crlConfiguration, (value) => value.toMap()),
      'ocspConfiguration': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityRevocationConfigurationOcspConfiguration, Map<String, dynamic>>(ocspConfiguration, (value) => value.toMap()),
    };
  }

  factory CertificateAuthorityRevocationConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfiguration(
      crlConfiguration: map['crlConfiguration'] == null ? null : (CertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap((map['crlConfiguration'] as Map).cast<String, dynamic>())).input(),
      ocspConfiguration: map['ocspConfiguration'] == null ? null : (CertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap((map['ocspConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

