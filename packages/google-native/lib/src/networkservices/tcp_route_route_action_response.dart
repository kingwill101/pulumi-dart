// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_destination_response.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteActionResponse {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final List<TcpRouteRouteDestinationResponse> destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final bool originalDestination;

  /// Creates a new [TcpRouteRouteActionResponse].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  /// [originalDestination] Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  TcpRouteRouteActionResponse({
    required this.destinations,
    required this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          pulumi.Input.encodeList<
            TcpRouteRouteDestinationResponse,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'originalDestination': originalDestination,
    };
  }

  factory TcpRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteActionResponse(
      destinations: pulumi.Input.decodeList<TcpRouteRouteDestinationResponse>(
        map['destinations'],
        (value) => TcpRouteRouteDestinationResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      originalDestination: map['originalDestination'] as bool,
    );
  }
}
