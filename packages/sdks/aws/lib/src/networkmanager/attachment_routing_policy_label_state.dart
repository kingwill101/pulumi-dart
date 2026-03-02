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
    this.attachmentId,
    this.coreNetworkId,
    this.routingPolicyLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'coreNetworkId': ?coreNetworkId,
      'routingPolicyLabel': ?routingPolicyLabel,
    };
  }

  factory AttachmentRoutingPolicyLabelState.fromMap(Map<String, dynamic> map) {
    return AttachmentRoutingPolicyLabelState(
      attachmentId: map['attachmentId'] == null ? null : ((map['attachmentId'] as String).input()).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : ((map['coreNetworkId'] as String).input()).input(),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : ((map['routingPolicyLabel'] as String).input()).input(),
    );
  }
}

