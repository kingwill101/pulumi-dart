// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_configuration.dart';
import 'leaf_certificate_configuration.dart';

/// The certificate configuration.
class CertificateConfiguration {
  /// The configuration to set up an ICA.
  final pulumi.Input<CertificateAuthorityConfiguration>
  certificateAuthorityConfiguration;

  /// The leaf certificate configuration.
  final pulumi.Input<LeafCertificateConfiguration> leafCertificateConfiguration;

  /// Creates a new [CertificateConfiguration].
  /// [certificateAuthorityConfiguration] The configuration to set up an ICA.
  /// [leafCertificateConfiguration] The leaf certificate configuration.
  CertificateConfiguration({
    required this.certificateAuthorityConfiguration,
    required this.leafCertificateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfiguration':
          pulumi.Input.mapInputValue<
            CertificateAuthorityConfiguration,
            Map<String, dynamic>
          >(certificateAuthorityConfiguration, (value) => value.toMap()),
      'leafCertificateConfiguration':
          pulumi.Input.mapInputValue<
            LeafCertificateConfiguration,
            Map<String, dynamic>
          >(leafCertificateConfiguration, (value) => value.toMap()),
    };
  }

  factory CertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateConfiguration(
      certificateAuthorityConfiguration: pulumi.Input.fromValue(
        CertificateAuthorityConfiguration.fromMap(
          (map['certificateAuthorityConfiguration']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      leafCertificateConfiguration: pulumi.Input.fromValue(
        LeafCertificateConfiguration.fromMap(
          (map['leafCertificateConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
