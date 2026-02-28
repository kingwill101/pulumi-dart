// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_destination.dart';

/// Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
class HttpRouteRequestMirrorPolicy {
  /// The destination the requests will be mirrored to. The weight of the destination will be ignored.
  final HttpRouteDestination? destination;

  /// Creates a new [HttpRouteRequestMirrorPolicy].
  /// [destination] The destination the requests will be mirrored to. The weight of the destination will be ignored.
  HttpRouteRequestMirrorPolicy({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue.toMap();
    }
    return map;
  }

  factory HttpRouteRequestMirrorPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRequestMirrorPolicy(
      destination: map['destination'] == null
          ? null
          : HttpRouteDestination.fromMap(
              (map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}
