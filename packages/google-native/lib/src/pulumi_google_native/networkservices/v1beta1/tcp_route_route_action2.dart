// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tcp_route_route_destination2.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteAction2 {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final List<TcpRouteRouteDestination2>? destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final bool? originalDestination;

  TcpRouteRouteAction2({
    this.destinations,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          Input.encodeList<TcpRouteRouteDestination2, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final originalDestinationValue = originalDestination;
    if (originalDestinationValue != null) {
      map['originalDestination'] = originalDestinationValue;
    }
    return map;
  }

  factory TcpRouteRouteAction2.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteAction2(
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<TcpRouteRouteDestination2>(
              map['destinations'],
              (value) => TcpRouteRouteDestination2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      originalDestination: map['originalDestination'] == null
          ? null
          : map['originalDestination'] as bool,
    );
  }
}
