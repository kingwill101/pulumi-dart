// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tls_route_route_destination_response2.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionResponse2 {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final List<TlsRouteRouteDestinationResponse2> destinations;

  TlsRouteRouteActionResponse2({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = Input.encodeList<TlsRouteRouteDestinationResponse2,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteActionResponse2.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteActionResponse2(
      destinations: Input.decodeList<TlsRouteRouteDestinationResponse2>(
          map['destinations'],
          (value) => TlsRouteRouteDestinationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
