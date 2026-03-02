// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTableAssociation resources.
class RouteTableAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  final pulumi.Input<bool>? replaceExistingAssociation;
  /// Identifier of the resource
  final pulumi.Input<String>? resourceId;
  /// Type of the resource
  final pulumi.Input<String>? resourceType;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String>? transitGatewayRouteTableId;

  /// Creates a new [RouteTableAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceExistingAssociation] Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  /// [resourceId] Identifier of the resource
  /// [resourceType] Type of the resource
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteTableAssociationState({
    this.region,
    this.replaceExistingAssociation,
    this.resourceId,
    this.resourceType,
    this.transitGatewayAttachmentId,
    this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replaceExistingAssociation': ?replaceExistingAssociation,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory RouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replaceExistingAssociation: map['replaceExistingAssociation'] == null ? null : ((map['replaceExistingAssociation'] as bool).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : ((map['transitGatewayAttachmentId'] as String).input()).input(),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : ((map['transitGatewayRouteTableId'] as String).input()).input(),
    );
  }
}

