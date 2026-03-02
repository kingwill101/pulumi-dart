// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_timeout_idle.dart';
import 'get_route_spec_http_route_timeout_per_request.dart';

class GetRouteSpecHttpRouteTimeout {
  final pulumi.Input<List<GetRouteSpecHttpRouteTimeoutIdle>> idles;
  final pulumi.Input<List<GetRouteSpecHttpRouteTimeoutPerRequest>> perRequests;

  /// Creates a new [GetRouteSpecHttpRouteTimeout].
  /// [idles] Required.
  /// [perRequests] Required.
  GetRouteSpecHttpRouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteTimeoutIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteTimeoutIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteTimeoutPerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteTimeoutPerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeout(
      idles: (pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeoutIdle>(map['idles'], (value) => GetRouteSpecHttpRouteTimeoutIdle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      perRequests: (pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeoutPerRequest>(map['perRequests'], (value) => GetRouteSpecHttpRouteTimeoutPerRequest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

