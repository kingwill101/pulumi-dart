// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_signing_certificate_signing_certificate_args_doc}
/// The set of arguments for SigningCertificate.
/// {@endtemplate}
/// {@macro pulumi_iam_signing_certificate_signing_certificate_args_doc}
class SigningCertificateArgs {
  /// The contents of the signing certificate in PEM-encoded format.
  final pulumi.Input<String> certificateBody;

  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  final pulumi.Input<String>? status;

  /// The name of the user the signing certificate is for.
  final pulumi.Input<String> userName;

  /// Creates a new [SigningCertificateArgs].
  /// [certificateBody] The contents of the signing certificate in PEM-encoded format.
  /// [status] The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  /// [userName] The name of the user the signing certificate is for.
  SigningCertificateArgs({
    required this.certificateBody,
    this.status,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBody': certificateBody,
      'status': ?status,
      'userName': userName,
    };
  }

  factory SigningCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SigningCertificateArgs(
      certificateBody: pulumi.Input.fromValue(map['certificateBody'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
