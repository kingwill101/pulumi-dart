// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String arn;
  /// PEM-encoded certificate value.
  final String certificate;
  final String certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  final String certificateChain;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetCertificateResult].
  /// [arn] Required.
  /// [certificate] PEM-encoded certificate value.
  /// [certificateAuthorityArn] Required.
  /// [certificateChain] PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetCertificateResult({
    required this.arn,
    required this.certificate,
    required this.certificateAuthorityArn,
    required this.certificateChain,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificate': certificate,
      'certificateAuthorityArn': certificateAuthorityArn,
      'certificateChain': certificateChain,
      'id': id,
      'region': region,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: map['arn'] as String,
      certificate: map['certificate'] as String,
      certificateAuthorityArn: map['certificateAuthorityArn'] as String,
      certificateChain: map['certificateChain'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

