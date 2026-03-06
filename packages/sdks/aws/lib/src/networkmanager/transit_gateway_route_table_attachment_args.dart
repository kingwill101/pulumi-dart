// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_transit_gateway_route_table_attachment_transit_gateway_route_table_attachment_args_doc}
/// The set of arguments for TransitGatewayRouteTableAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_transit_gateway_route_table_attachment_transit_gateway_route_table_attachment_args_doc}
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

  /// Creates a new [TransitGatewayRouteTableAttachmentArgs].
  /// [peeringId] ID of the peer for the attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayRouteTableArn] ARN of the transit gateway route table for the attachment.
  const TransitGatewayRouteTableAttachmentArgs({
    required this.peeringId,
    this.routingPolicyLabel,
    this.tags,
    required this.transitGatewayRouteTableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringId': peeringId,
      'routingPolicyLabel': ?routingPolicyLabel,
      'tags': ?tags,
      'transitGatewayRouteTableArn': transitGatewayRouteTableArn,
    };
  }

  factory TransitGatewayRouteTableAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRouteTableAttachmentArgs(
      peeringId: pulumi.Input.fromValue(map['peeringId'] as String),
      routingPolicyLabel: (() { final guardedValue = map['routingPolicyLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayRouteTableArn: pulumi.Input.fromValue(map['transitGatewayRouteTableArn'] as String),
    );
  }
}

