// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SigningCertificate.
class SigningCertificateArgs {
  /// The contents of the signing certificate in PEM-encoded format.
  final Input<String> certificateBody;

  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  final Input<String>? status;

  /// The name of the user the signing certificate is for.
  final Input<String> userName;

  SigningCertificateArgs({
    required this.certificateBody,
    this.status,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateBody'] = certificateBody;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory SigningCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SigningCertificateArgs(
      certificateBody: Input.asInput<String>(map['certificateBody']),
      status: Input.asOptionalInput<String>(map['status']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
