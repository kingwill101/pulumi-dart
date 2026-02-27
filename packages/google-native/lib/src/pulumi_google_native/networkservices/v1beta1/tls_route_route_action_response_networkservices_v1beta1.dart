// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_destination_response_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionResponseNetworkservicesV1beta1 {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final List<TlsRouteRouteDestinationResponseNetworkservicesV1beta1>
      destinations;

  TlsRouteRouteActionResponseNetworkservicesV1beta1({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = pulumi.Input.encodeList<
        TlsRouteRouteDestinationResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TlsRouteRouteActionResponseNetworkservicesV1beta1(
      destinations: pulumi.Input.decodeList<
              TlsRouteRouteDestinationResponseNetworkservicesV1beta1>(
          map['destinations'],
          (value) =>
              TlsRouteRouteDestinationResponseNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
