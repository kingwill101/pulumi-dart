// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority {
  /// ARN of the <span pulumi-lang-nodejs="`aws.acmpca.CertificateAuthority`" pulumi-lang-dotnet="`aws.acmpca.CertificateAuthority`" pulumi-lang-go="`acmpca.CertificateAuthority`" pulumi-lang-python="`acmpca.CertificateAuthority`" pulumi-lang-yaml="`aws.acmpca.CertificateAuthority`" pulumi-lang-java="`aws.acmpca.CertificateAuthority`">`aws.acmpca.CertificateAuthority`</span> used to create the TLS Certificates.
  final String awsPcaAuthorityArn;

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
