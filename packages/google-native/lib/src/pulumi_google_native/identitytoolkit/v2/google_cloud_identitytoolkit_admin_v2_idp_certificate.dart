// ignore_for_file: unused_element, unnecessary_cast

/// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificate {
  /// The x509 certificate
  final String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final x509CertificateValue = x509Certificate;
    if (x509CertificateValue != null) {
      map['x509Certificate'] = x509CertificateValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
