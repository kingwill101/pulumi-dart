// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_server_propagation_timeouts/route_server_propagation_timeouts.dart';

/// The set of arguments for RouteServerPropagation.
class RouteServerPropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The unique identifier for the route server to be associated.
  final Input<String> routeServerId;

  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  final Input<String> routeTableId;
  final Input<RouteServerPropagationTimeouts>? timeouts;

  RouteServerPropagationArgs({
    this.region,
    required this.routeServerId,
    required this.routeTableId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeServerId'] = routeServerId;
    map['routeTableId'] = routeTableId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          RouteServerPropagationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RouteServerPropagationArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerPropagationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      routeServerId: Input.asInput<String>(map['routeServerId']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      timeouts: Input.asOptionalInput<RouteServerPropagationTimeouts>(
          map['timeouts']),
    );
  }
}
