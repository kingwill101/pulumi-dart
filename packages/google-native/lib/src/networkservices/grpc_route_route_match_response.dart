// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_response.dart';
import 'grpc_route_method_match_response.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchResponse {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatchResponse> headers;
  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatchResponse method;

  /// Creates a new [GrpcRouteRouteMatchResponse].
  /// [headers] Optional. Specifies a collection of headers to match.
  /// [method] Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  GrpcRouteRouteMatchResponse({
    required this.headers,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.encodeList<GrpcRouteHeaderMatchResponse, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'method': method.toMap(),
    };
  }

  factory GrpcRouteRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatchResponse(
      headers: pulumi.Input.decodeList<GrpcRouteHeaderMatchResponse>(map['headers'], (value) => GrpcRouteHeaderMatchResponse.fromMap((value as Map).cast<String, dynamic>())),
      method: GrpcRouteMethodMatchResponse.fromMap((map['method'] as Map).cast<String, dynamic>()),
    );
  }
}

