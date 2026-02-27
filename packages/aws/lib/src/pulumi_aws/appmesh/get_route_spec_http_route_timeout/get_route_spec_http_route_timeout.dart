// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_http_route_timeout_idle/get_route_spec_http_route_timeout_idle.dart';
import '../get_route_spec_http_route_timeout_per_request/get_route_spec_http_route_timeout_per_request.dart';

class GetRouteSpecHttpRouteTimeout {
  final List<GetRouteSpecHttpRouteTimeoutIdle> idles;
  final List<GetRouteSpecHttpRouteTimeoutPerRequest> perRequests;

  GetRouteSpecHttpRouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = pulumi.Input.encodeList<GetRouteSpecHttpRouteTimeoutIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    map['perRequests'] = pulumi.Input.encodeList<
        GetRouteSpecHttpRouteTimeoutPerRequest,
        Map<String, dynamic>>(perRequests, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeout(
      idles: pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeoutIdle>(
          map['idles'],
          (value) => GetRouteSpecHttpRouteTimeoutIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
      perRequests:
          pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeoutPerRequest>(
              map['perRequests'],
              (value) => GetRouteSpecHttpRouteTimeoutPerRequest.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
