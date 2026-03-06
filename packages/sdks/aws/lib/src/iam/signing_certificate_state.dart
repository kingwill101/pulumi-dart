// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SigningCertificate resources.
class SigningCertificateState {
  /// The contents of the signing certificate in PEM-encoded format.
  final pulumi.Input<String>? certificateBody;
  /// The ID for the signing certificate.
  final pulumi.Input<String>? certificateId;
  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  final pulumi.Input<String>? status;
  /// The name of the user the signing certificate is for.
  final pulumi.Input<String>? userName;

  /// Creates a new [SigningCertificateState].
  /// [certificateBody] The contents of the signing certificate in PEM-encoded format.
  /// [certificateId] The ID for the signing certificate.
  /// [status] The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  /// [userName] The name of the user the signing certificate is for.
  const SigningCertificateState({
    this.certificateBody,
    this.certificateId,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBody': ?certificateBody,
      'certificateId': ?certificateId,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory SigningCertificateState.fromMap(Map<String, dynamic> map) {
    return SigningCertificateState(
      certificateBody: (() { final guardedValue = map['certificateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

