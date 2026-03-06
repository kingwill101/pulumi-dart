// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_propagation_timeouts.dart';

/// {@template pulumi_ec2transitgateway_default_route_table_propagation_default_route_table_propagation_args_doc}
/// The set of arguments for DefaultRouteTablePropagation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_default_route_table_propagation_default_route_table_propagation_args_doc}
class DefaultRouteTablePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultRouteTablePropagationTimeouts>? timeouts;
  /// ID of the Transit Gateway to change the default association route table on.
  final pulumi.Input<String> transitGatewayId;
  /// ID of the Transit Gateway Route Table to be made the default association route table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  /// Creates a new [DefaultRouteTablePropagationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [transitGatewayId] ID of the Transit Gateway to change the default association route table on.
  /// [transitGatewayRouteTableId] ID of the Transit Gateway Route Table to be made the default association route table.
  const DefaultRouteTablePropagationArgs({
    this.region,
    this.timeouts,
    required this.transitGatewayId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DefaultRouteTablePropagationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayId': transitGatewayId,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory DefaultRouteTablePropagationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTablePropagationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRouteTablePropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
      transitGatewayRouteTableId: pulumi.Input.fromValue(map['transitGatewayRouteTableId'] as String),
    );
  }
}

