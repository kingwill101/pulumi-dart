// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteMatchHeaderMatchRange {
  /// End of the range.
  final pulumi.Input<int> end;
  /// Start of the range.
  final pulumi.Input<int> start;

  /// Creates a new [RouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  RouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory RouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchHeaderMatchRange(
      end: (map['end'] as int).input(),
      start: (map['start'] as int).input(),
    );
  }
}

