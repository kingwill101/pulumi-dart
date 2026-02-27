// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tls_route_route_destination2.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteAction2 {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final List<TlsRouteRouteDestination2> destinations;

  TlsRouteRouteAction2({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        Input.encodeList<TlsRouteRouteDestination2, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteAction2.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteAction2(
      destinations: Input.decodeList<TlsRouteRouteDestination2>(
          map['destinations'],
          (value) => TlsRouteRouteDestination2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
