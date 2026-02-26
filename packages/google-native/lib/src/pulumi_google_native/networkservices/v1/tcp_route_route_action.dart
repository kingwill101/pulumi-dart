// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tcp_route_route_destination.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteAction {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final List<TcpRouteRouteDestination>? destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final bool? originalDestination;

  TcpRouteRouteAction({
    this.destinations,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          Input.encodeList<TcpRouteRouteDestination, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final originalDestinationValue = originalDestination;
    if (originalDestinationValue != null) {
      map['originalDestination'] = originalDestinationValue;
    }
    return map;
  }

  factory TcpRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteAction(
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<TcpRouteRouteDestination>(
              map['destinations'],
              (value) => TcpRouteRouteDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      originalDestination: map['originalDestination'] == null
          ? null
          : map['originalDestination'] as bool,
    );
  }
}
