// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouteTableAssociation.
class RouteTableAssociationEc2transitgatewayArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  final pulumi.Input<bool>? replaceExistingAssociation;

  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  RouteTableAssociationEc2transitgatewayArgs({
    this.region,
    this.replaceExistingAssociation,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replaceExistingAssociationValue = replaceExistingAssociation;
    if (replaceExistingAssociationValue != null) {
      map['replaceExistingAssociation'] = replaceExistingAssociationValue;
    }
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory RouteTableAssociationEc2transitgatewayArgs.fromMap(
      Map<String, dynamic> map) {
    return RouteTableAssociationEc2transitgatewayArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replaceExistingAssociation:
          pulumi.Input.asOptionalInput<bool>(map['replaceExistingAssociation']),
      transitGatewayAttachmentId:
          pulumi.Input.asInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
