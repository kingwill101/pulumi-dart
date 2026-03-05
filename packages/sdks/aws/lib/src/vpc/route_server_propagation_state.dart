// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_propagation_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerPropagation resources.
class RouteServerPropagationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier for the route server to be associated.
  final pulumi.Input<String>? routeServerId;
  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? routeTableId;
  final pulumi.Input<RouteServerPropagationTimeouts>? timeouts;

  /// Creates a new [RouteServerPropagationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier for the route server to be associated.
  /// [routeTableId] The ID of the route table to which route server will propagate routes.
  /// [timeouts] Optional.
  RouteServerPropagationState({
    this.region,
    this.routeServerId,
    this.routeTableId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeServerId': ?routeServerId,
      'routeTableId': ?routeTableId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerPropagationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RouteServerPropagationState.fromMap(Map<String, dynamic> map) {
    return RouteServerPropagationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerId: (() { final guardedValue = map['routeServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteServerPropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

