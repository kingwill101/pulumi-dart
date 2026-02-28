// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_attachment_routing_policy_label_attachment_routing_policy_label_args_doc}
/// The set of arguments for AttachmentRoutingPolicyLabel.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_attachment_routing_policy_label_attachment_routing_policy_label_args_doc}
class AttachmentRoutingPolicyLabelArgs {
  /// The ID of the attachment to apply the routing policy label to.
  final pulumi.Input<String> attachmentId;

  /// The ID of the core network containing the attachment.
  final pulumi.Input<String> coreNetworkId;

  /// The routing policy label to apply to the attachment.
  final pulumi.Input<String> routingPolicyLabel;

  /// Creates a new [AttachmentRoutingPolicyLabelArgs].
  /// [attachmentId] The ID of the attachment to apply the routing policy label to.
  /// [coreNetworkId] The ID of the core network containing the attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the attachment.
  AttachmentRoutingPolicyLabelArgs({
    required String attachmentId,
    required String coreNetworkId,
    required String routingPolicyLabel,
  })  : attachmentId = pulumi.Input.asInput<String>(attachmentId),
        coreNetworkId = pulumi.Input.asInput<String>(coreNetworkId),
        routingPolicyLabel = pulumi.Input.asInput<String>(routingPolicyLabel);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['coreNetworkId'] = coreNetworkId;
    map['routingPolicyLabel'] = routingPolicyLabel;
    return map;
  }

  factory AttachmentRoutingPolicyLabelArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentRoutingPolicyLabelArgs(
      attachmentId: map['attachmentId'] as String,
      coreNetworkId: map['coreNetworkId'] as String,
      routingPolicyLabel: map['routingPolicyLabel'] as String,
    );
  }
}
