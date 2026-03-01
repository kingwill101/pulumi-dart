// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_configuration_response.dart';
import 'leaf_certificate_configuration_response.dart';

/// The certificate configuration.
class CertificateConfigurationResponse {
  /// The configuration to set up an ICA.
  final CertificateAuthorityConfigurationResponse certificateAuthorityConfiguration;
  /// The leaf certificate configuration.
  final LeafCertificateConfigurationResponse leafCertificateConfiguration;

  /// Creates a new [CertificateConfigurationResponse].
  /// [certificateAuthorityConfiguration] The configuration to set up an ICA.
  /// [leafCertificateConfiguration] The leaf certificate configuration.
  CertificateConfigurationResponse({
    required this.certificateAuthorityConfiguration,
    required this.leafCertificateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfiguration': certificateAuthorityConfiguration.toMap(),
      'leafCertificateConfiguration': leafCertificateConfiguration.toMap(),
    };
  }

  factory CertificateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CertificateConfigurationResponse(
      certificateAuthorityConfiguration: CertificateAuthorityConfigurationResponse.fromMap((map['certificateAuthorityConfiguration'] as Map).cast<String, dynamic>()),
      leafCertificateConfiguration: LeafCertificateConfigurationResponse.fromMap((map['leafCertificateConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

