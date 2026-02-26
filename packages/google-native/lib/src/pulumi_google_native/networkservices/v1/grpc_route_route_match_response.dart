// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpc_route_header_match_response.dart';
import 'grpc_route_method_match_response.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchResponse {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatchResponse> headers;

  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatchResponse method;

  GrpcRouteRouteMatchResponse({
    required this.headers,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headers'] =
        Input.encodeList<GrpcRouteHeaderMatchResponse, Map<String, dynamic>>(
            headers, (value) => value.toMap());
    map['method'] = method.toMap();
    return map;
  }

  factory GrpcRouteRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatchResponse(
      headers: Input.decodeList<GrpcRouteHeaderMatchResponse>(
          map['headers'],
          (value) => GrpcRouteHeaderMatchResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      method: GrpcRouteMethodMatchResponse.fromMap(
          (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
