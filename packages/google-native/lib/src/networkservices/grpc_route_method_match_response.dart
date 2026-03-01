// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a match against a method.
class GrpcRouteMethodMatchResponse {
  /// Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  final bool caseSensitive;

  /// Name of the method to match against. If unspecified, will match all methods.
  final String grpcMethod;

  /// Name of the service to match against. If unspecified, will match all services.
  final String grpcService;

  /// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  final String type;

  /// Creates a new [GrpcRouteMethodMatchResponse].
  /// [caseSensitive] Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  /// [grpcMethod] Name of the method to match against. If unspecified, will match all methods.
  /// [grpcService] Name of the service to match against. If unspecified, will match all services.
  /// [type] Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  GrpcRouteMethodMatchResponse({
    required this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'grpcMethod': grpcMethod,
      'grpcService': grpcService,
      'type': type,
    };
  }

  factory GrpcRouteMethodMatchResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteMethodMatchResponse(
      caseSensitive: map['caseSensitive'] as bool,
      grpcMethod: map['grpcMethod'] as String,
      grpcService: map['grpcService'] as String,
      type: map['type'] as String,
    );
  }
}
