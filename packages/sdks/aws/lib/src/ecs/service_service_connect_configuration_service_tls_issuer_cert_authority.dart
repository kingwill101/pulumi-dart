// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority {
  /// ARN of the `aws.acmpca.CertificateAuthority` used to create the TLS Certificates.
  final pulumi.Input<String> awsPcaAuthorityArn;

  /// Creates a new [ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority].
  /// [awsPcaAuthorityArn] ARN of the `aws.acmpca.CertificateAuthority` used to create the TLS Certificates.
  ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority({
    required this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'awsPcaAuthorityArn': awsPcaAuthorityArn};
  }

  factory ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority(
      awsPcaAuthorityArn: pulumi.Input.fromValue(
        map['awsPcaAuthorityArn'] as String,
      ),
    );
  }
}
