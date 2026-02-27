// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AttachmentAccepter.
class AttachmentAccepterArgs {
  /// ID of the attachment.
  final pulumi.Input<String> attachmentId;

  /// Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  final pulumi.Input<String> attachmentType;

  AttachmentAccepterArgs({
    required this.attachmentId,
    required this.attachmentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['attachmentType'] = attachmentType;
    return map;
  }

  factory AttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentAccepterArgs(
      attachmentId: pulumi.Input.asInput<String>(map['attachmentId']),
      attachmentType: pulumi.Input.asInput<String>(map['attachmentType']),
    );
  }
}
