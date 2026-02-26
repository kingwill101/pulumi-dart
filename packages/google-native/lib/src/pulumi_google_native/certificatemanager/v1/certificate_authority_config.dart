// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_service_config.dart';

/// The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.
class CertificateAuthorityConfig {
  /// Defines a CertificateAuthorityServiceConfig.
  final CertificateAuthorityServiceConfig? certificateAuthorityServiceConfig;

  CertificateAuthorityConfig({
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

  factory CertificateAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfig(
      certificateAuthorityServiceConfig:
          map['certificateAuthorityServiceConfig'] == null
              ? null
              : CertificateAuthorityServiceConfig.fromMap(
                  (map['certificateAuthorityServiceConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
