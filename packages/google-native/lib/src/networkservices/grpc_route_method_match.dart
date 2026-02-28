// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_method_match_type.dart';

/// Specifies a match against a method.
class GrpcRouteMethodMatch {
  /// Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  final bool? caseSensitive;

  /// Name of the method to match against. If unspecified, will match all methods.
  final String grpcMethod;

  /// Name of the service to match against. If unspecified, will match all services.
  final String grpcService;

  /// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  final GrpcRouteMethodMatchType? type;

  /// Creates a new [GrpcRouteMethodMatch].
  /// [caseSensitive] Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  /// [grpcMethod] Name of the method to match against. If unspecified, will match all methods.
  /// [grpcService] Name of the service to match against. If unspecified, will match all services.
  /// [type] Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  GrpcRouteMethodMatch({
    this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseSensitiveValue = caseSensitive;
    if (caseSensitiveValue != null) {
      map['caseSensitive'] = caseSensitiveValue;
    }
    map['grpcMethod'] = grpcMethod;
    map['grpcService'] = grpcService;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GrpcRouteMethodMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteMethodMatch(
      caseSensitive:
          map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      grpcMethod: map['grpcMethod'] as String,
      grpcService: map['grpcService'] as String,
      type: map['type'] == null
          ? null
          : GrpcRouteMethodMatchType.fromValue(map['type'] as String),
    );
  }
}
