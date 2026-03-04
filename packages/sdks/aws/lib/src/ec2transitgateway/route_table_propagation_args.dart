// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_route_table_propagation_route_table_propagation_args_doc}
/// The set of arguments for RouteTablePropagation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_route_table_propagation_route_table_propagation_args_doc}
class RouteTablePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  /// Creates a new [RouteTablePropagationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteTablePropagationArgs({
    this.region,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory RouteTablePropagationArgs.fromMap(Map<String, dynamic> map) {
    return RouteTablePropagationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
