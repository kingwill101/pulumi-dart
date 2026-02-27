// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_route_table_propagation_timeouts/default_route_table_propagation_timeouts.dart';

/// The set of arguments for DefaultRouteTablePropagation.
class DefaultRouteTablePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultRouteTablePropagationTimeouts>? timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  final pulumi.Input<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  DefaultRouteTablePropagationArgs({
    this.region,
    this.timeouts,
    required this.transitGatewayId,
    required this.transitGatewayRouteTableId,
  });

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<DefaultRouteTablePropagationTimeouts>(
              map['timeouts']),
      transitGatewayId: pulumi.Input.asInput<String>(map['transitGatewayId']),
      transitGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
