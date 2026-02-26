// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tcp_route_route_destination_response2.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteActionResponse2 {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final List<TcpRouteRouteDestinationResponse2> destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final bool originalDestination;

  TcpRouteRouteActionResponse2({
    required this.destinations,
    required this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = Input.encodeList<TcpRouteRouteDestinationResponse2,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    map['originalDestination'] = originalDestination;
    return map;
  }

  factory TcpRouteRouteActionResponse2.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteActionResponse2(
      destinations: Input.decodeList<TcpRouteRouteDestinationResponse2>(
          map['destinations'],
          (value) => TcpRouteRouteDestinationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      originalDestination: map['originalDestination'] as bool,
    );
  }
}
