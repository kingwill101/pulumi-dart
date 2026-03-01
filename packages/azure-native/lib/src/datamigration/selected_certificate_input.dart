// ignore_for_file: unused_element, unnecessary_cast


/// Info for certificate to be exported for TDE enabled databases.
class SelectedCertificateInput {
  /// Name of certificate to be exported.
  final String certificateName;
  /// Password to use for encrypting the exported certificate.
  final String password;

  /// Creates a new [SelectedCertificateInput].
  /// [certificateName] Name of certificate to be exported.
  /// [password] Password to use for encrypting the exported certificate.
  SelectedCertificateInput({
    required this.certificateName,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'password': password,
    };
  }

  factory SelectedCertificateInput.fromMap(Map<String, dynamic> map) {
    return SelectedCertificateInput(
      certificateName: map['certificateName'] as String,
      password: map['password'] as String,
    );
  }
}

