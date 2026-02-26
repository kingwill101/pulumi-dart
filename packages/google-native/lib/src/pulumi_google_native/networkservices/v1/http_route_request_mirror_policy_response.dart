// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_destination_response.dart';

/// Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
class HttpRouteRequestMirrorPolicyResponse {
  /// The destination the requests will be mirrored to. The weight of the destination will be ignored.
  final HttpRouteDestinationResponse destination;

  HttpRouteRequestMirrorPolicyResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination.toMap();
    return map;
  }

  factory HttpRouteRequestMirrorPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRequestMirrorPolicyResponse(
      destination: HttpRouteDestinationResponse.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}
