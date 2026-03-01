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
  SigningCertificateState({
    pulumi.Output<String>? certificateBody,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? userName,
  }) :
      certificateBody = pulumi.Input.asOptionalInput<String>(certificateBody),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      status = pulumi.Input.asOptionalInput<String>(status),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      certificateBody: map['certificateBody'] == null ? null : pulumi.Output.create<String>(map['certificateBody'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

