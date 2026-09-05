// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteMatchPath {
  /// Exact query parameter to match on.
  final pulumi.Input<String?>? exact;
  /// Regex used to match the path.
  final pulumi.Input<String?>? regex;

  /// Creates a new [RouteSpecHttp2RouteMatchPath].
  /// [exact] Exact query parameter to match on.
  /// [regex] Regex used to match the path.
  const RouteSpecHttp2RouteMatchPath({
    this.exact,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'regex': ?regex,
    };
  }

  factory RouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchPath(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
