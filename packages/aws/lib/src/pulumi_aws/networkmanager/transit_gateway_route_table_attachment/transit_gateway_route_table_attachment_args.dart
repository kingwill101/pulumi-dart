// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TransitGatewayRouteTableAttachment.
class TransitGatewayRouteTableAttachmentArgs {
  /// ID of the peer for the attachment.
  final pulumi.Input<String> peeringId;

  /// The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN of the transit gateway route table for the attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayRouteTableArn;

  TransitGatewayRouteTableAttachmentArgs({
    required this.peeringId,
    this.routingPolicyLabel,
    this.tags,
    required this.transitGatewayRouteTableArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peeringId'] = peeringId;
    final routingPolicyLabelValue = routingPolicyLabel;
    if (routingPolicyLabelValue != null) {
      map['routingPolicyLabel'] = routingPolicyLabelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayRouteTableArn'] = transitGatewayRouteTableArn;
    return map;
  }

  factory TransitGatewayRouteTableAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return TransitGatewayRouteTableAttachmentArgs(
      peeringId: pulumi.Input.asInput<String>(map['peeringId']),
      routingPolicyLabel:
          pulumi.Input.asOptionalInput<String>(map['routingPolicyLabel']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayRouteTableArn:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableArn']),
    );
  }
}
