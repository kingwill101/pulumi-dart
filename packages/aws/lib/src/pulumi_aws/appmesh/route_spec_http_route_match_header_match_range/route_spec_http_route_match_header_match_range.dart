// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttpRouteMatchHeaderMatchRange {
  /// End of the range.
  final int end;

  /// Start of the range.
  final int start;

  RouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory RouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
