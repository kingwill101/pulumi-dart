// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
/// The set of arguments for ListenerAdditionalCertificateAttachment.
/// {@endtemplate}
/// {@macro pulumi_nlb_listener_additional_certificate_attachment_listener_additional_certificate_attachment_args_doc}
class ListenerAdditionalCertificateAttachmentArgs {
  /// The ID of additional certificates.
  final pulumi.Input<String> certificateId;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The listener ID. You must specify the ID of a listener that uses SSL over TCP.
  final pulumi.Input<String> listenerId;

  /// Creates a new [ListenerAdditionalCertificateAttachmentArgs].
  /// [certificateId] The ID of additional certificates.
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [listenerId] The listener ID. You must specify the ID of a listener that uses SSL over TCP.
  ListenerAdditionalCertificateAttachmentArgs({
    required pulumi.Output<String> certificateId,
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<String> listenerId,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      listenerId = pulumi.Input.asInput<String>(listenerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'dryRun': ?dryRun,
      'listenerId': listenerId,
    };
  }

  factory ListenerAdditionalCertificateAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ListenerAdditionalCertificateAttachmentArgs(
      certificateId: pulumi.Output.create<String>(map['certificateId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      listenerId: pulumi.Output.create<String>(map['listenerId'] as String),
    );
  }
}

