// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttpRouteMatchHeaderMatchRange {
  /// End of the range.
  final pulumi.Input<int> end;
  /// Start of the range.
  final pulumi.Input<int> start;

  /// Creates a new [RouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  RouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory RouteSpecHttpRouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchHeaderMatchRange(
      end: pulumi.Input.fromValue(map['end'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}

