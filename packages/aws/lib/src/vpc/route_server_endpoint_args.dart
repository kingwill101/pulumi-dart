// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_endpoint_timeouts.dart';

/// {@template pulumi_vpc_route_server_endpoint_route_server_endpoint_args_doc}
/// The set of arguments for RouteServerEndpoint.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_server_endpoint_route_server_endpoint_args_doc}
class RouteServerEndpointArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the route server for which to create an endpoint.
  final pulumi.Input<String> routeServerId;

  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<RouteServerEndpointTimeouts>? timeouts;

  /// Creates a new [RouteServerEndpointArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The ID of the route server for which to create an endpoint.
  /// [subnetId] The ID of the subnet in which to create the route server endpoint.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  RouteServerEndpointArgs({
    String? region,
    required String routeServerId,
    required String subnetId,
    Map<String, String>? tags,
    RouteServerEndpointTimeouts? timeouts,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        routeServerId = pulumi.Input.asInput<String>(routeServerId),
        subnetId = pulumi.Input.asInput<String>(subnetId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<RouteServerEndpointTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeServerId'] = routeServerId;
    map['subnetId'] = subnetId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          RouteServerEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RouteServerEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerEndpointArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routeServerId: map['routeServerId'] as String,
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : RouteServerEndpointTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
