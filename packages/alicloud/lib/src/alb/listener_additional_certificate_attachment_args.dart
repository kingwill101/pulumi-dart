// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
/// The set of arguments for ListenerAdditionalCertificateAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
class ListenerAdditionalCertificateAttachmentArgs {
  /// The Certificate ID.
  final pulumi.Input<String> certificateId;
  /// The ID of the ALB listener.
  final pulumi.Input<String> listenerId;

  /// Creates a new [ListenerAdditionalCertificateAttachmentArgs].
  /// [certificateId] The Certificate ID.
  /// [listenerId] The ID of the ALB listener.
  ListenerAdditionalCertificateAttachmentArgs({
    required String certificateId,
    required String listenerId,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      listenerId = pulumi.Input.asInput<String>(listenerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'listenerId': listenerId,
    };
  }

  factory ListenerAdditionalCertificateAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ListenerAdditionalCertificateAttachmentArgs(
      certificateId: map['certificateId'] as String,
      listenerId: map['listenerId'] as String,
    );
  }
}

