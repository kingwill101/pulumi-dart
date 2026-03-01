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
    pulumi.Output<String>? region,
    pulumi.Output<DefaultRouteTablePropagationTimeouts>? timeouts,
    required pulumi.Output<String> transitGatewayId,
    required pulumi.Output<String> transitGatewayRouteTableId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<DefaultRouteTablePropagationTimeouts>(timeouts),
      transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId),
      transitGatewayRouteTableId = pulumi.Input.asInput<String>(transitGatewayRouteTableId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DefaultRouteTablePropagationTimeouts>(DefaultRouteTablePropagationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transitGatewayId: pulumi.Output.create<String>(map['transitGatewayId'] as String),
      transitGatewayRouteTableId: pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

