// ignore_for_file: unused_element, unnecessary_cast

class DirectoryConfigCertificateBasedAuthProperties {
  /// The ARN of the AWS Certificate Manager Private CA resource.
  final String? certificateAuthorityArn;

  /// The status of the certificate-based authentication properties. Valid values - ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"].
  final String? status;

  DirectoryConfigCertificateBasedAuthProperties({
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

  factory DirectoryConfigCertificateBasedAuthProperties.fromMap(
      Map<String, dynamic> map) {
    return DirectoryConfigCertificateBasedAuthProperties(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null
          ? null
          : map['certificateAuthorityArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
