// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tls_route_route_destination_response.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionResponse {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final List<TlsRouteRouteDestinationResponse> destinations;

  TlsRouteRouteActionResponse({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = Input.encodeList<TlsRouteRouteDestinationResponse,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteActionResponse(
      destinations: Input.decodeList<TlsRouteRouteDestinationResponse>(
          map['destinations'],
          (value) => TlsRouteRouteDestinationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
