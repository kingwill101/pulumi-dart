// ignore_for_file: unused_element, unnecessary_cast

class DirectoryCertificateBasedAuthProperties {
  /// The Amazon Resource Name (ARN) of the certificate manager private certificate authority (ACM-PCA) that is used for certificate-based authentication.
  final String? certificateAuthorityArn;

  /// Status of certificate-based authentication. Default `DISABLED`.
  final String? status;

  DirectoryCertificateBasedAuthProperties({
    this.certificateAuthorityArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityArnValue = certificateAuthorityArn;
    if (certificateAuthorityArnValue != null) {
      map['certificateAuthorityArn'] = certificateAuthorityArnValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DirectoryCertificateBasedAuthProperties.fromMap(
      Map<String, dynamic> map) {
    return DirectoryCertificateBasedAuthProperties(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null
          ? null
          : map['certificateAuthorityArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
