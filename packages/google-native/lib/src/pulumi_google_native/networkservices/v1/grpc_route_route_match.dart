// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'grpc_route_header_match.dart';
import 'grpc_route_method_match.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatch {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatch>? headers;

  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatch? method;

  GrpcRouteRouteMatch({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<GrpcRouteHeaderMatch, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue.toMap();
    }
    return map;
  }

  factory GrpcRouteRouteMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatch(
      headers: map['headers'] == null
          ? null
          : Input.decodeList<GrpcRouteHeaderMatch>(
              map['headers'],
              (value) => GrpcRouteHeaderMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null
          ? null
          : GrpcRouteMethodMatch.fromMap(
              (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
