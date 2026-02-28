// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_networkservices_v1beta1.dart';
import 'grpc_route_method_match_networkservices_v1beta1.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchNetworkservicesV1beta1 {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatchNetworkservicesV1beta1>? headers;

  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatchNetworkservicesV1beta1? method;

  /// Creates a new [GrpcRouteRouteMatchNetworkservicesV1beta1].
  /// [headers] Optional. Specifies a collection of headers to match.
  /// [method] Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  GrpcRouteRouteMatchNetworkservicesV1beta1({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          GrpcRouteHeaderMatchNetworkservicesV1beta1,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue.toMap();
    }
    return map;
  }

  factory GrpcRouteRouteMatchNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteRouteMatchNetworkservicesV1beta1(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<GrpcRouteHeaderMatchNetworkservicesV1beta1>(
              map['headers'],
              (value) => GrpcRouteHeaderMatchNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null
          ? null
          : GrpcRouteMethodMatchNetworkservicesV1beta1.fromMap(
              (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
