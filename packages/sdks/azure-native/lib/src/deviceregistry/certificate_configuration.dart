// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_configuration.dart';
import 'leaf_certificate_configuration.dart';

/// The certificate configuration.
class CertificateConfiguration {
  /// The configuration to set up an ICA.
  final CertificateAuthorityConfiguration certificateAuthorityConfiguration;
  /// The leaf certificate configuration.
  final LeafCertificateConfiguration leafCertificateConfiguration;

  /// Creates a new [CertificateConfiguration].
  /// [certificateAuthorityConfiguration] The configuration to set up an ICA.
  /// [leafCertificateConfiguration] The leaf certificate configuration.
  CertificateConfiguration({
    required this.certificateAuthorityConfiguration,
    required this.leafCertificateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfiguration': certificateAuthorityConfiguration.toMap(),
      'leafCertificateConfiguration': leafCertificateConfiguration.toMap(),
    };
  }

  factory CertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateConfiguration(
      certificateAuthorityConfiguration: CertificateAuthorityConfiguration.fromMap((map['certificateAuthorityConfiguration'] as Map).cast<String, dynamic>()),
      leafCertificateConfiguration: LeafCertificateConfiguration.fromMap((map['leafCertificateConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

