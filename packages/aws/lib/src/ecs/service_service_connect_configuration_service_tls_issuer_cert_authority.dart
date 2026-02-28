// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority {
  /// ARN of the `aws.acmpca.CertificateAuthority` used to create the TLS Certificates.
  final String awsPcaAuthorityArn;

  /// Creates a new [ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority].
  /// [awsPcaAuthorityArn] ARN of the `aws.acmpca.CertificateAuthority` used to create the TLS Certificates.
  ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority({
    required this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsPcaAuthorityArn'] = awsPcaAuthorityArn;
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority(
      awsPcaAuthorityArn: map['awsPcaAuthorityArn'] as String,
    );
  }
}
