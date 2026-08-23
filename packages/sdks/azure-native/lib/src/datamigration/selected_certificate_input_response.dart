// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Info for certificate to be exported for TDE enabled databases.
class SelectedCertificateInputResponse {
  /// Name of certificate to be exported.
  final pulumi.Input<String> certificateName;
  /// Password to use for encrypting the exported certificate.
  final pulumi.Input<String> password;

  /// Creates a new [SelectedCertificateInputResponse].
  /// [certificateName] Name of certificate to be exported.
  /// [password] Password to use for encrypting the exported certificate.
  const SelectedCertificateInputResponse({
    required this.certificateName,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'password': password,
    };
  }

  factory SelectedCertificateInputResponse.fromMap(Map<String, dynamic> map) {
    return SelectedCertificateInputResponse(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
    );
  }
}
