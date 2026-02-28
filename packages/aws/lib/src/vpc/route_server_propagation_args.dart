// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_propagation_timeouts.dart';

/// {@template pulumi_vpc_route_server_propagation_route_server_propagation_args_doc}
/// The set of arguments for RouteServerPropagation.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_server_propagation_route_server_propagation_args_doc}
class RouteServerPropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier for the route server to be associated.
  final pulumi.Input<String> routeServerId;
  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> routeTableId;
  final pulumi.Input<RouteServerPropagationTimeouts>? timeouts;

  /// Creates a new [RouteServerPropagationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier for the route server to be associated.
  /// [routeTableId] The ID of the route table to which route server will propagate routes.
  /// [timeouts] Optional.
  RouteServerPropagationArgs({
    String? region,
    required String routeServerId,
    required String routeTableId,
    RouteServerPropagationTimeouts? timeouts,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routeServerId = pulumi.Input.asInput<String>(routeServerId),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      timeouts = pulumi.Input.asOptionalInput<RouteServerPropagationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeServerId': routeServerId,
      'routeTableId': routeTableId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerPropagationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RouteServerPropagationArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerPropagationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routeServerId: map['routeServerId'] as String,
      routeTableId: map['routeTableId'] as String,
      timeouts: map['timeouts'] == null ? null : RouteServerPropagationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

