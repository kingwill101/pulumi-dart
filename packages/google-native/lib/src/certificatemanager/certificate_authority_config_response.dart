// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_service_config_response.dart';

/// The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.
class CertificateAuthorityConfigResponse {
  /// Defines a CertificateAuthorityServiceConfig.
  final CertificateAuthorityServiceConfigResponse certificateAuthorityServiceConfig;

  /// Creates a new [CertificateAuthorityConfigResponse].
  /// [certificateAuthorityServiceConfig] Defines a CertificateAuthorityServiceConfig.
  CertificateAuthorityConfigResponse({
    required this.certificateAuthorityServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityServiceConfig': certificateAuthorityServiceConfig.toMap(),
    };
  }

  factory CertificateAuthorityConfigResponse.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfigResponse(
      certificateAuthorityServiceConfig: CertificateAuthorityServiceConfigResponse.fromMap((map['certificateAuthorityServiceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

