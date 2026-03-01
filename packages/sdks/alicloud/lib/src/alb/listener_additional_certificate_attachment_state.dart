// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ListenerAdditionalCertificateAttachment resources.
class ListenerAdditionalCertificateAttachmentState {
  /// The Certificate ID.
  final pulumi.Input<String>? certificateId;
  /// The type of the certificate.
  final pulumi.Input<String>? certificateType;
  /// The ID of the ALB listener.
  final pulumi.Input<String>? listenerId;
  /// The status of the certificate.
  final pulumi.Input<String>? status;

  /// Creates a new [ListenerAdditionalCertificateAttachmentState].
  /// [certificateId] The Certificate ID.
  /// [certificateType] The type of the certificate.
  /// [listenerId] The ID of the ALB listener.
  /// [status] The status of the certificate.
  ListenerAdditionalCertificateAttachmentState({
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? certificateType,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? status,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      certificateType = pulumi.Input.asOptionalInput<String>(certificateType),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateType': ?certificateType,
      'listenerId': ?listenerId,
      'status': ?status,
    };
  }

  factory ListenerAdditionalCertificateAttachmentState.fromMap(Map<String, dynamic> map) {
    return ListenerAdditionalCertificateAttachmentState(
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      certificateType: map['certificateType'] == null ? null : pulumi.Output.create<String>(map['certificateType'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

