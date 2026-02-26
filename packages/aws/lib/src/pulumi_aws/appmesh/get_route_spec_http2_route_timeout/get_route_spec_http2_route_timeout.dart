// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_timeout_idle/get_route_spec_http2_route_timeout_idle.dart';
import '../get_route_spec_http2_route_timeout_per_request/get_route_spec_http2_route_timeout_per_request.dart';

class GetRouteSpecHttp2RouteTimeout {
  final List<GetRouteSpecHttp2RouteTimeoutIdle> idles;
  final List<GetRouteSpecHttp2RouteTimeoutPerRequest> perRequests;

  GetRouteSpecHttp2RouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = Input.encodeList<GetRouteSpecHttp2RouteTimeoutIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    map['perRequests'] = Input.encodeList<
        GetRouteSpecHttp2RouteTimeoutPerRequest,
        Map<String, dynamic>>(perRequests, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttp2RouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteTimeout(
      idles: Input.decodeList<GetRouteSpecHttp2RouteTimeoutIdle>(
          map['idles'],
          (value) => GetRouteSpecHttp2RouteTimeoutIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
      perRequests: Input.decodeList<GetRouteSpecHttp2RouteTimeoutPerRequest>(
          map['perRequests'],
          (value) => GetRouteSpecHttp2RouteTimeoutPerRequest.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
