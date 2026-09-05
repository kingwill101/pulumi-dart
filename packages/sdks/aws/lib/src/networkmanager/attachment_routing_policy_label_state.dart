// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AttachmentRoutingPolicyLabel resources.
class AttachmentRoutingPolicyLabelState {
  /// The ID of the attachment to apply the routing policy label to.
  final pulumi.Input<String?>? attachmentId;
  /// The ID of the core network containing the attachment.
  final pulumi.Input<String?>? coreNetworkId;
  /// The routing policy label to apply to the attachment.
  final pulumi.Input<String?>? routingPolicyLabel;

  /// Creates a new [AttachmentRoutingPolicyLabelState].
  /// [attachmentId] The ID of the attachment to apply the routing policy label to.
  /// [coreNetworkId] The ID of the core network containing the attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the attachment.
  const AttachmentRoutingPolicyLabelState({
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
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicyLabel: (() { final guardedValue = map['routingPolicyLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
