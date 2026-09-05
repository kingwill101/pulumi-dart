// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String? arn;
  /// PEM-encoded certificate value.
  final String? certificate;
  final String? certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  final String? certificateChain;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetCertificateResult].
  /// [arn] Optional.
  /// [certificate] PEM-encoded certificate value.
  /// [certificateAuthorityArn] Optional.
  /// [certificateChain] PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetCertificateResult({
    this.arn,
    this.certificate,
    this.certificateAuthorityArn,
    this.certificateChain,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateChain': ?certificateChain,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
