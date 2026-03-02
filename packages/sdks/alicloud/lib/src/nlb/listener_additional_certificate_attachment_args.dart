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
    required this.certificateId,
    this.dryRun,
    required this.listenerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'dryRun': ?dryRun,
      'listenerId': listenerId,
    };
  }

  factory ListenerAdditionalCertificateAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ListenerAdditionalCertificateAttachmentArgs(
      certificateId: (map['certificateId'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      listenerId: (map['listenerId'] as String).input(),
    );
  }
}

