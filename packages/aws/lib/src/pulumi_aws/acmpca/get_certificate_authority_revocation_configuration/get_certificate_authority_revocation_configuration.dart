// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_certificate_authority_revocation_configuration_crl_configuration/get_certificate_authority_revocation_configuration_crl_configuration.dart';
import '../get_certificate_authority_revocation_configuration_ocsp_configuration/get_certificate_authority_revocation_configuration_ocsp_configuration.dart';

class GetCertificateAuthorityRevocationConfiguration {
  /// Nested attribute containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority.
  final List<GetCertificateAuthorityRevocationConfigurationCrlConfiguration>
      crlConfigurations;
  final List<GetCertificateAuthorityRevocationConfigurationOcspConfiguration>
      ocspConfigurations;

  GetCertificateAuthorityRevocationConfiguration({
    required this.crlConfigurations,
    required this.ocspConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crlConfigurations'] = pulumi.Input.encodeList<
        GetCertificateAuthorityRevocationConfigurationCrlConfiguration,
        Map<String, dynamic>>(crlConfigurations, (value) => value.toMap());
    map['ocspConfigurations'] = pulumi.Input.encodeList<
        GetCertificateAuthorityRevocationConfigurationOcspConfiguration,
        Map<String, dynamic>>(ocspConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetCertificateAuthorityRevocationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetCertificateAuthorityRevocationConfiguration(
      crlConfigurations: pulumi.Input.decodeList<
              GetCertificateAuthorityRevocationConfigurationCrlConfiguration>(
          map['crlConfigurations'],
          (value) =>
              GetCertificateAuthorityRevocationConfigurationCrlConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      ocspConfigurations: pulumi.Input.decodeList<
              GetCertificateAuthorityRevocationConfigurationOcspConfiguration>(
          map['ocspConfigurations'],
          (value) =>
              GetCertificateAuthorityRevocationConfigurationOcspConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
