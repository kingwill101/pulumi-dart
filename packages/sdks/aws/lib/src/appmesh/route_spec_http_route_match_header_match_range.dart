// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttpRouteMatchHeaderMatchRange {
  /// End of the range.
  final int end;
  /// Start of the range.
  final int start;

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
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}

