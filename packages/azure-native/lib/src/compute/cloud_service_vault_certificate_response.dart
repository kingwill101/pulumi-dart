// ignore_for_file: unused_element, unnecessary_cast


/// Describes a single certificate reference in a Key Vault, and where the certificate should reside on the role instance.
class CloudServiceVaultCertificateResponse {
  /// This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  final String? certificateUrl;

  /// Creates a new [CloudServiceVaultCertificateResponse].
  /// [certificateUrl] This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  CloudServiceVaultCertificateResponse({
    this.certificateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
    };
  }

  factory CloudServiceVaultCertificateResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultCertificateResponse(
      certificateUrl: map['certificateUrl'] == null ? null : map['certificateUrl'] as String,
    );
  }
}

