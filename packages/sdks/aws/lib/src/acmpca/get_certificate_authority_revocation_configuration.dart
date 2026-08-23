// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_authority_revocation_configuration_crl_configuration.dart';
import 'get_certificate_authority_revocation_configuration_ocsp_configuration.dart';

class GetCertificateAuthorityRevocationConfiguration {
  /// Nested attribute containing configuration of the certificate revocation list (CRL). See `crlConfiguration` below.
  final pulumi.Input<List<GetCertificateAuthorityRevocationConfigurationCrlConfiguration>> crlConfigurations;
  /// Nested attribute containing configuration of the Online Certificate Status Protocol (OCSP). See `ocspConfiguration` below.
  final pulumi.Input<List<GetCertificateAuthorityRevocationConfigurationOcspConfiguration>> ocspConfigurations;

  /// Creates a new [GetCertificateAuthorityRevocationConfiguration].
  /// [crlConfigurations] Nested attribute containing configuration of the certificate revocation list (CRL). See `crlConfiguration` below.
  /// [ocspConfigurations] Nested attribute containing configuration of the Online Certificate Status Protocol (OCSP). See `ocspConfiguration` below.
  const GetCertificateAuthorityRevocationConfiguration({
    required this.crlConfigurations,
    required this.ocspConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crlConfigurations': pulumi.Input.mapInputValue<List<GetCertificateAuthorityRevocationConfigurationCrlConfiguration>, List<Map<String, dynamic>>>(crlConfigurations, (value) => pulumi.Input.encodeList<GetCertificateAuthorityRevocationConfigurationCrlConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ocspConfigurations': pulumi.Input.mapInputValue<List<GetCertificateAuthorityRevocationConfigurationOcspConfiguration>, List<Map<String, dynamic>>>(ocspConfigurations, (value) => pulumi.Input.encodeList<GetCertificateAuthorityRevocationConfigurationOcspConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCertificateAuthorityRevocationConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityRevocationConfiguration(
      crlConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificateAuthorityRevocationConfigurationCrlConfiguration>(map['crlConfigurations']!, (value) => GetCertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      ocspConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificateAuthorityRevocationConfigurationOcspConfiguration>(map['ocspConfigurations']!, (value) => GetCertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
