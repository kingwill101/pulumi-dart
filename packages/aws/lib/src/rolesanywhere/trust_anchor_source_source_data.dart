// ignore_for_file: unused_element, unnecessary_cast


class TrustAnchorSourceSourceData {
  /// The ARN of an ACM Private Certificate Authority.
  final String? acmPcaArn;
  final String? x509CertificateData;

  /// Creates a new [TrustAnchorSourceSourceData].
  /// [acmPcaArn] The ARN of an ACM Private Certificate Authority.
  /// [x509CertificateData] Optional.
  TrustAnchorSourceSourceData({
    this.acmPcaArn,
    this.x509CertificateData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acmPcaArn': ?acmPcaArn,
      'x509CertificateData': ?x509CertificateData,
    };
  }

  factory TrustAnchorSourceSourceData.fromMap(Map<String, dynamic> map) {
    return TrustAnchorSourceSourceData(
      acmPcaArn: map['acmPcaArn'] == null ? null : map['acmPcaArn'] as String,
      x509CertificateData: map['x509CertificateData'] == null ? null : map['x509CertificateData'] as String,
    );
  }
}

