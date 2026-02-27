// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_destination_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteActionNetworkservicesV1beta1 {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final List<TcpRouteRouteDestinationNetworkservicesV1beta1>? destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final bool? originalDestination;

  TcpRouteRouteActionNetworkservicesV1beta1({
    this.destinations,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          TcpRouteRouteDestinationNetworkservicesV1beta1,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    final originalDestinationValue = originalDestination;
    if (originalDestinationValue != null) {
      map['originalDestination'] = originalDestinationValue;
    }
    return map;
  }

  factory TcpRouteRouteActionNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TcpRouteRouteActionNetworkservicesV1beta1(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<
                  TcpRouteRouteDestinationNetworkservicesV1beta1>(
              map['destinations'],
              (value) => TcpRouteRouteDestinationNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      originalDestination: map['originalDestination'] == null
          ? null
          : map['originalDestination'] as bool,
    );
  }
}
