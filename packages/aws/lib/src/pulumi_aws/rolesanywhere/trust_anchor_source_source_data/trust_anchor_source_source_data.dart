// ignore_for_file: unused_element, unnecessary_cast

class TrustAnchorSourceSourceData {
  /// The ARN of an ACM Private Certificate Authority.
  final String? acmPcaArn;
  final String? x509CertificateData;

  TrustAnchorSourceSourceData({
    this.acmPcaArn,
    this.x509CertificateData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acmPcaArnValue = acmPcaArn;
    if (acmPcaArnValue != null) {
      map['acmPcaArn'] = acmPcaArnValue;
    }
    final x509CertificateDataValue = x509CertificateData;
    if (x509CertificateDataValue != null) {
      map['x509CertificateData'] = x509CertificateDataValue;
    }
    return map;
  }

  factory TrustAnchorSourceSourceData.fromMap(Map<String, dynamic> map) {
    return TrustAnchorSourceSourceData(
      acmPcaArn: map['acmPcaArn'] == null ? null : map['acmPcaArn'] as String,
      x509CertificateData: map['x509CertificateData'] == null
          ? null
          : map['x509CertificateData'] as String,
    );
  }
}
