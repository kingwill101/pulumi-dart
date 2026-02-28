// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_match_header.dart';
import 'grpc_route_rule_match_method.dart';

class GrpcRouteRuleMatch {
  /// Specifies a list of HTTP request headers to match against.
  /// Structure is documented below.
  final List<GrpcRouteRuleMatchHeader>? headers;
  /// A gRPC method to match against. If this field is empty or omitted, will match all methods.
  /// Structure is documented below.
  final GrpcRouteRuleMatchMethod? method;

  /// Creates a new [GrpcRouteRuleMatch].
  /// [headers] Specifies a list of HTTP request headers to match against.
  /// [method] A gRPC method to match against. If this field is empty or omitted, will match all methods.
  GrpcRouteRuleMatch({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<GrpcRouteRuleMatchHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'method': ?method == null ? null : method!.toMap(),
    };
  }

  factory GrpcRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatch(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<GrpcRouteRuleMatchHeader>(map['headers'], (value) => GrpcRouteRuleMatchHeader.fromMap((value as Map).cast<String, dynamic>())),
      method: map['method'] == null ? null : GrpcRouteRuleMatchMethod.fromMap((map['method'] as Map).cast<String, dynamic>()),
    );
  }
}

