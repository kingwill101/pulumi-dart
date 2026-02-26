// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpc_route_header_match2.dart';
import 'grpc_route_method_match2.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatch2 {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatch2>? headers;

  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatch2? method;

  GrpcRouteRouteMatch2({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<GrpcRouteHeaderMatch2, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue.toMap();
    }
    return map;
  }

  factory GrpcRouteRouteMatch2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatch2(
      headers: map['headers'] == null
          ? null
          : Input.decodeList<GrpcRouteHeaderMatch2>(
              map['headers'],
              (value) => GrpcRouteHeaderMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null
          ? null
          : GrpcRouteMethodMatch2.fromMap(
              (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
