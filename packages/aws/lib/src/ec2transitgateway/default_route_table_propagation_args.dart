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
  DefaultRouteTablePropagationArgs({
    String? region,
    DefaultRouteTablePropagationTimeouts? timeouts,
    required String transitGatewayId,
    required String transitGatewayRouteTableId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        timeouts =
            pulumi.Input.asOptionalInput<DefaultRouteTablePropagationTimeouts>(
                timeouts),
        transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId),
        transitGatewayRouteTableId =
            pulumi.Input.asInput<String>(transitGatewayRouteTableId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DefaultRouteTablePropagationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['transitGatewayId'] = transitGatewayId;
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory DefaultRouteTablePropagationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTablePropagationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : DefaultRouteTablePropagationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      transitGatewayId: map['transitGatewayId'] as String,
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
