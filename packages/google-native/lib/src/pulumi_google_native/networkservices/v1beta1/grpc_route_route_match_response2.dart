// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpc_route_header_match_response2.dart';
import 'grpc_route_method_match_response2.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchResponse2 {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatchResponse2> headers;

  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatchResponse2 method;

  GrpcRouteRouteMatchResponse2({
    required this.headers,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headers'] =
        Input.encodeList<GrpcRouteHeaderMatchResponse2, Map<String, dynamic>>(
            headers, (value) => value.toMap());
    map['method'] = method.toMap();
    return map;
  }

  factory GrpcRouteRouteMatchResponse2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatchResponse2(
      headers: Input.decodeList<GrpcRouteHeaderMatchResponse2>(
          map['headers'],
          (value) => GrpcRouteHeaderMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      method: GrpcRouteMethodMatchResponse2.fromMap(
          (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
