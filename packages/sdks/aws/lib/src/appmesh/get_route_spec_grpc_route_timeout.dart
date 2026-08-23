// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_timeout_idle.dart';
import 'get_route_spec_grpc_route_timeout_per_request.dart';

class GetRouteSpecGrpcRouteTimeout {
  final pulumi.Input<List<GetRouteSpecGrpcRouteTimeoutIdle>> idles;
  final pulumi.Input<List<GetRouteSpecGrpcRouteTimeoutPerRequest>> perRequests;

  /// Creates a new [GetRouteSpecGrpcRouteTimeout].
  /// [idles] Required.
  /// [perRequests] Required.
  const GetRouteSpecGrpcRouteTimeout({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRouteTimeoutIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRouteTimeoutIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRouteTimeoutPerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRouteTimeoutPerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecGrpcRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteTimeout(
      idles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecGrpcRouteTimeoutIdle>(map['idles']!, (value) => GetRouteSpecGrpcRouteTimeoutIdle.fromMap((value as Map).cast<String, dynamic>()))),
      perRequests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecGrpcRouteTimeoutPerRequest>(map['perRequests']!, (value) => GetRouteSpecGrpcRouteTimeoutPerRequest.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
