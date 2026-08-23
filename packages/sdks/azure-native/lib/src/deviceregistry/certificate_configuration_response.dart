// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_configuration_response.dart';
import 'leaf_certificate_configuration_response.dart';

/// The certificate configuration.
class CertificateConfigurationResponse {
  /// The configuration to set up an ICA.
  final pulumi.Input<CertificateAuthorityConfigurationResponse> certificateAuthorityConfiguration;
  /// The leaf certificate configuration.
  final pulumi.Input<LeafCertificateConfigurationResponse> leafCertificateConfiguration;

  /// Creates a new [CertificateConfigurationResponse].
  /// [certificateAuthorityConfiguration] The configuration to set up an ICA.
  /// [leafCertificateConfiguration] The leaf certificate configuration.
  const CertificateConfigurationResponse({
    required this.certificateAuthorityConfiguration,
    required this.leafCertificateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfiguration': pulumi.Input.mapInputValue<CertificateAuthorityConfigurationResponse, Map<String, dynamic>>(certificateAuthorityConfiguration, (value) => value.toMap()),
      'leafCertificateConfiguration': pulumi.Input.mapInputValue<LeafCertificateConfigurationResponse, Map<String, dynamic>>(leafCertificateConfiguration, (value) => value.toMap()),
    };
  }

  factory CertificateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CertificateConfigurationResponse(
      certificateAuthorityConfiguration: pulumi.Input.fromValue(CertificateAuthorityConfigurationResponse.fromMap((map['certificateAuthorityConfiguration']! as Map).cast<String, dynamic>())),
      leafCertificateConfiguration: pulumi.Input.fromValue(LeafCertificateConfigurationResponse.fromMap((map['leafCertificateConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
