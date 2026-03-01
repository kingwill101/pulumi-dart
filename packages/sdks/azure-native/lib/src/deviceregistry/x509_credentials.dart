// ignore_for_file: unused_element, unnecessary_cast


/// The x509 certificate for authentication mode Certificate.
class X509Credentials {
  /// The name of the secret containing the certificate and private key (e.g. stored as .der/.pem or .der/.pfx).
  final String certificateSecretName;

  /// Creates a new [X509Credentials].
  /// [certificateSecretName] The name of the secret containing the certificate and private key (e.g. stored as .der/.pem or .der/.pfx).
  X509Credentials({
    required this.certificateSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateSecretName': certificateSecretName,
    };
  }

  factory X509Credentials.fromMap(Map<String, dynamic> map) {
    return X509Credentials(
      certificateSecretName: map['certificateSecretName'] as String,
    );
  }
}

