// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_route_table_association_route_table_association_args_doc}
/// The set of arguments for RouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_route_table_association_route_table_association_args_doc}
class RouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  final pulumi.Input<bool>? replaceExistingAssociation;

  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  /// Creates a new [RouteTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceExistingAssociation] Boolean whether the Gateway Attachment should remove any current Route Table association before associating with the specified Route Table. Default value: `false`. This argument is intended for use with EC2 Transit Gateways shared into the current account, otherwise the `transit_gateway_default_route_table_association` argument of the `aws.ec2transitgateway.VpcAttachment` resource should be used.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteTableAssociationArgs({
    this.region,
    this.replaceExistingAssociation,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replaceExistingAssociation': ?replaceExistingAssociation,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory RouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replaceExistingAssociation: (() {
        final guardedValue = map['replaceExistingAssociation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      transitGatewayAttachmentId: pulumi.Input.fromValue(
        map['transitGatewayAttachmentId'] as String,
      ),
      transitGatewayRouteTableId: pulumi.Input.fromValue(
        map['transitGatewayRouteTableId'] as String,
      ),
    );
  }
}
