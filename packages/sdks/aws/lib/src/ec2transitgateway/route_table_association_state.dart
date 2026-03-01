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
    pulumi.Output<String>? region,
    pulumi.Output<bool>? replaceExistingAssociation,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayRouteTableId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replaceExistingAssociation = pulumi.Input.asOptionalInput<bool>(replaceExistingAssociation),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayRouteTableId = pulumi.Input.asOptionalInput<String>(transitGatewayRouteTableId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replaceExistingAssociation: map['replaceExistingAssociation'] == null ? null : pulumi.Output.create<bool>(map['replaceExistingAssociation'] as bool),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

