// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final pulumi.Input<String>? exact;

  /// Creates a new [RouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] The exact query parameter to match on.
  const RouteSpecHttp2RouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory RouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

