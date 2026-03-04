// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttpRouteMatchPath {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> regex;

  /// Creates a new [GetRouteSpecHttpRouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetRouteSpecHttpRouteMatchPath({required this.exact, required this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': exact, 'regex': regex};
  }

  factory GetRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchPath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
