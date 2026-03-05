// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttp2RouteMatchPath {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> regex;

  /// Creates a new [GetRouteSpecHttp2RouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'regex': regex,
    };
  }

  factory GetRouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchPath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}

