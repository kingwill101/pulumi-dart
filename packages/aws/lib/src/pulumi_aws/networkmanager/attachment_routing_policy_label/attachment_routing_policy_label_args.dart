// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AttachmentRoutingPolicyLabel.
class AttachmentRoutingPolicyLabelArgs {
  /// The ID of the attachment to apply the routing policy label to.
  final Input<String> attachmentId;

  /// The ID of the core network containing the attachment.
  final Input<String> coreNetworkId;

  /// The routing policy label to apply to the attachment.
  final Input<String> routingPolicyLabel;

  AttachmentRoutingPolicyLabelArgs({
    required this.attachmentId,
    required this.coreNetworkId,
    required this.routingPolicyLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['coreNetworkId'] = coreNetworkId;
    map['routingPolicyLabel'] = routingPolicyLabel;
    return map;
  }

  factory AttachmentRoutingPolicyLabelArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentRoutingPolicyLabelArgs(
      attachmentId: Input.asInput<String>(map['attachmentId']),
      coreNetworkId: Input.asInput<String>(map['coreNetworkId']),
      routingPolicyLabel: Input.asInput<String>(map['routingPolicyLabel']),
    );
  }
}
