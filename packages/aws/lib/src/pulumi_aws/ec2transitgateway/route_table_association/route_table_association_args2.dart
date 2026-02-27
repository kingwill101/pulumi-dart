// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouteTableAssociation.
class RouteTableAssociationArgs2 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  final Input<bool>? replaceExistingAssociation;

  /// Identifier of EC2 Transit Gateway Attachment.
  final Input<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  final Input<String> transitGatewayRouteTableId;

  RouteTableAssociationArgs2({
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

  factory RouteTableAssociationArgs2.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationArgs2(
      region: Input.asOptionalInput<String>(map['region']),
      replaceExistingAssociation:
          Input.asOptionalInput<bool>(map['replaceExistingAssociation']),
      transitGatewayAttachmentId:
          Input.asInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayRouteTableId:
          Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
