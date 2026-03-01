// ignore_for_file: unused_element, unnecessary_cast


/// Describes a single certificate reference in a Key Vault, and where the certificate should reside on the role instance.
class CloudServiceVaultCertificate {
  /// This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  final String? certificateUrl;

  /// Creates a new [CloudServiceVaultCertificate].
  /// [certificateUrl] This is the URL of a certificate that has been uploaded to Key Vault as a secret.
  CloudServiceVaultCertificate({
    this.certificateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
    };
  }

  factory CloudServiceVaultCertificate.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultCertificate(
      certificateUrl: map['certificateUrl'] == null ? null : map['certificateUrl'] as String,
    );
  }
}

