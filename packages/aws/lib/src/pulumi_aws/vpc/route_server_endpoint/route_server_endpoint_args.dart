// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_server_endpoint_timeouts/route_server_endpoint_timeouts.dart';

/// The set of arguments for RouteServerEndpoint.
class RouteServerEndpointArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the route server for which to create an endpoint.
  final Input<String> routeServerId;

  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  final Input<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<RouteServerEndpointTimeouts>? timeouts;

  RouteServerEndpointArgs({
    this.region,
    required this.routeServerId,
    required this.subnetId,
    this.tags,
    this.timeouts,
  });

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
      map['timeouts'] = Input.mapOptionalInputValue<RouteServerEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RouteServerEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerEndpointArgs(
      region: Input.asOptionalInput<String>(map['region']),
      routeServerId: Input.asInput<String>(map['routeServerId']),
      subnetId: Input.asInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<RouteServerEndpointTimeouts>(map['timeouts']),
    );
  }
}
