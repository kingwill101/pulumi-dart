// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_association_timeouts.dart';

/// {@template pulumi_ec2transitgateway_default_route_table_association_default_route_table_association_args_doc}
/// The set of arguments for DefaultRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_default_route_table_association_default_route_table_association_args_doc}
class DefaultRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultRouteTableAssociationTimeouts>? timeouts;
  /// ID of the Transit Gateway to change the default association route table on.
  final pulumi.Input<String> transitGatewayId;
  /// ID of the Transit Gateway Route Table to be made the default association route table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  /// Creates a new [DefaultRouteTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [transitGatewayId] ID of the Transit Gateway to change the default association route table on.
  /// [transitGatewayRouteTableId] ID of the Transit Gateway Route Table to be made the default association route table.
  const DefaultRouteTableAssociationArgs({
    this.region,
    this.timeouts,
    required this.transitGatewayId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DefaultRouteTableAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayId': transitGatewayId,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory DefaultRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRouteTableAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
      transitGatewayRouteTableId: pulumi.Input.fromValue(map['transitGatewayRouteTableId'] as String),
    );
  }
}
