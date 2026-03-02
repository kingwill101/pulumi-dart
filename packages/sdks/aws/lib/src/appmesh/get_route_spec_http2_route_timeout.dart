// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_timeout_idle.dart';
import 'get_route_spec_http2_route_timeout_per_request.dart';

class GetRouteSpecHttp2RouteTimeout {
  final pulumi.Input<List<GetRouteSpecHttp2RouteTimeoutIdle>> idles;
  final pulumi.Input<List<GetRouteSpecHttp2RouteTimeoutPerRequest>> perRequests;

  /// Creates a new [GetRouteSpecHttp2RouteTimeout].
  /// [idles] Required.
  /// [perRequests] Required.
  GetRouteSpecHttp2RouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteTimeoutIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteTimeoutIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteTimeoutPerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteTimeoutPerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttp2RouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteTimeout(
      idles: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteTimeoutIdle>(map['idles'], (value) => GetRouteSpecHttp2RouteTimeoutIdle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      perRequests: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteTimeoutPerRequest>(map['perRequests'], (value) => GetRouteSpecHttp2RouteTimeoutPerRequest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

