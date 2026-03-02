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
    this.certificateId,
    this.certificateType,
    this.listenerId,
    this.status,
  });

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
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      certificateType: map['certificateType'] == null ? null : (map['certificateType']! as String).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

