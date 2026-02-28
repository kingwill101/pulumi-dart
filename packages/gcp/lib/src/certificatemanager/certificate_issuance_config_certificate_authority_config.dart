// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_issuance_config_certificate_authority_config_certificate_authority_service_config.dart';

class CertificateIssuanceConfigCertificateAuthorityConfig {
  /// Defines a CertificateAuthorityServiceConfig.
  /// Structure is documented below.
  final CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig?
      certificateAuthorityServiceConfig;

  /// Creates a new [CertificateIssuanceConfigCertificateAuthorityConfig].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  CertificateIssuanceConfigCertificateAuthorityConfig({
    this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityServiceConfigValue =
        certificateAuthorityServiceConfig;
    if (certificateAuthorityServiceConfigValue != null) {
      map['certificateAuthorityServiceConfig'] =
          certificateAuthorityServiceConfigValue.toMap();
    }
    return map;
  }

  factory CertificateIssuanceConfigCertificateAuthorityConfig.fromMap(
      Map<String, dynamic> map) {
    return CertificateIssuanceConfigCertificateAuthorityConfig(
      certificateAuthorityServiceConfig: map[
                  'certificateAuthorityServiceConfig'] ==
              null
          ? null
          : CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig
              .fromMap((map['certificateAuthorityServiceConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
