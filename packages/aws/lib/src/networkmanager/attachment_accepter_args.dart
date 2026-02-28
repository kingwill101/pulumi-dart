// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_attachment_accepter_attachment_accepter_args_doc}
/// The set of arguments for AttachmentAccepter.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_attachment_accepter_attachment_accepter_args_doc}
class AttachmentAccepterArgs {
  /// ID of the attachment.
  final pulumi.Input<String> attachmentId;
  /// Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  final pulumi.Input<String> attachmentType;

  /// Creates a new [AttachmentAccepterArgs].
  /// [attachmentId] ID of the attachment.
  /// [attachmentType] Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  AttachmentAccepterArgs({
    required String attachmentId,
    required String attachmentType,
  }) :
      attachmentId = pulumi.Input.asInput<String>(attachmentId),
      attachmentType = pulumi.Input.asInput<String>(attachmentType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'attachmentType': attachmentType,
    };
  }

  factory AttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentAccepterArgs(
      attachmentId: map['attachmentId'] as String,
      attachmentType: map['attachmentType'] as String,
    );
  }
}

