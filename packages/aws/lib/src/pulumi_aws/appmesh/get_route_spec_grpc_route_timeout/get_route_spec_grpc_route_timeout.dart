// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_grpc_route_timeout_idle/get_route_spec_grpc_route_timeout_idle.dart';
import '../get_route_spec_grpc_route_timeout_per_request/get_route_spec_grpc_route_timeout_per_request.dart';

class GetRouteSpecGrpcRouteTimeout {
  final List<GetRouteSpecGrpcRouteTimeoutIdle> idles;
  final List<GetRouteSpecGrpcRouteTimeoutPerRequest> perRequests;

  GetRouteSpecGrpcRouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = Input.encodeList<GetRouteSpecGrpcRouteTimeoutIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    map['perRequests'] = Input.encodeList<
        GetRouteSpecGrpcRouteTimeoutPerRequest,
        Map<String, dynamic>>(perRequests, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecGrpcRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteTimeout(
      idles: Input.decodeList<GetRouteSpecGrpcRouteTimeoutIdle>(
          map['idles'],
          (value) => GetRouteSpecGrpcRouteTimeoutIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
      perRequests: Input.decodeList<GetRouteSpecGrpcRouteTimeoutPerRequest>(
          map['perRequests'],
          (value) => GetRouteSpecGrpcRouteTimeoutPerRequest.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
