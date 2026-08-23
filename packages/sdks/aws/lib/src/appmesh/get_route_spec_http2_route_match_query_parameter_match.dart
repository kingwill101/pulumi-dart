// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttp2RouteMatchQueryParameterMatch {
  final pulumi.Input<String> exact;

  /// Creates a new [GetRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] Required.
  const GetRouteSpecHttp2RouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}
