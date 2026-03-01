// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ServiceConnectTlsCertificateAuthority
class ServiceConnectTlsCertificateAuthorityResponse {
  /// The ARN of the AWS Private Certificate Authority certificate.
  final String? awsPcaAuthorityArn;

  /// Creates a new [ServiceConnectTlsCertificateAuthorityResponse].
  /// [awsPcaAuthorityArn] The ARN of the AWS Private Certificate Authority certificate.
  ServiceConnectTlsCertificateAuthorityResponse({
    this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsPcaAuthorityArn': ?awsPcaAuthorityArn,
    };
  }

  factory ServiceConnectTlsCertificateAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsCertificateAuthorityResponse(
      awsPcaAuthorityArn: map['awsPcaAuthorityArn'] == null ? null : map['awsPcaAuthorityArn'] as String,
    );
  }
}

