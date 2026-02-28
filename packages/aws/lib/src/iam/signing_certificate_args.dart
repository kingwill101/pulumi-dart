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
    required String certificateBody,
    String? status,
    required String userName,
  })  : certificateBody = pulumi.Input.asInput<String>(certificateBody),
        status = pulumi.Input.asOptionalInput<String>(status),
        userName = pulumi.Input.asInput<String>(userName);

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
      certificateBody: map['certificateBody'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      userName: map['userName'] as String,
    );
  }
}
