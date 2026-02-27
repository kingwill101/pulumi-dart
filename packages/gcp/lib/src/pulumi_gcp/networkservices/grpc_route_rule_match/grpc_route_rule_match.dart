// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../grpc_route_rule_match_header/grpc_route_rule_match_header.dart';
import '../grpc_route_rule_match_method/grpc_route_rule_match_method.dart';

class GrpcRouteRuleMatch {
  /// Specifies a list of HTTP request headers to match against.
  /// Structure is documented below.
  final List<GrpcRouteRuleMatchHeader>? headers;

  /// A gRPC method to match against. If this field is empty or omitted, will match all methods.
  /// Structure is documented below.
  final GrpcRouteRuleMatchMethod? method;

  GrpcRouteRuleMatch({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<GrpcRouteRuleMatchHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue.toMap();
    }
    return map;
  }

  factory GrpcRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatch(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<GrpcRouteRuleMatchHeader>(
              map['headers'],
              (value) => GrpcRouteRuleMatchHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null
          ? null
          : GrpcRouteRuleMatchMethod.fromMap(
              (map['method'] as Map).cast<String, dynamic>()),
    );
  }
}
