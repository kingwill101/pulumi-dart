// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tls_route_route_destination.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteAction {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final List<TlsRouteRouteDestination> destinations;

  TlsRouteRouteAction({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        Input.encodeList<TlsRouteRouteDestination, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteAction(
      destinations: Input.decodeList<TlsRouteRouteDestination>(
          map['destinations'],
          (value) => TlsRouteRouteDestination.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
