// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AttachmentRoutingPolicyLabel resources.
class AttachmentRoutingPolicyLabelState {
  /// The ID of the attachment to apply the routing policy label to.
  final pulumi.Input<String>? attachmentId;
  /// The ID of the core network containing the attachment.
  final pulumi.Input<String>? coreNetworkId;
  /// The routing policy label to apply to the attachment.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Creates a new [AttachmentRoutingPolicyLabelState].
  /// [attachmentId] The ID of the attachment to apply the routing policy label to.
  /// [coreNetworkId] The ID of the core network containing the attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the attachment.
  AttachmentRoutingPolicyLabelState({
    pulumi.Output<String>? attachmentId,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? routingPolicyLabel,
  }) :
      attachmentId = pulumi.Input.asOptionalInput<String>(attachmentId),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      routingPolicyLabel = pulumi.Input.asOptionalInput<String>(routingPolicyLabel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'coreNetworkId': ?coreNetworkId,
      'routingPolicyLabel': ?routingPolicyLabel,
    };
  }

  factory AttachmentRoutingPolicyLabelState.fromMap(Map<String, dynamic> map) {
    return AttachmentRoutingPolicyLabelState(
      attachmentId: map['attachmentId'] == null ? null : pulumi.Output.create<String>(map['attachmentId'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : pulumi.Output.create<String>(map['routingPolicyLabel'] as String),
    );
  }
}

