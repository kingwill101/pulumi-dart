// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttp2RouteMatchHeaderMatchRange {
  /// End of the range.
  final int end;

  /// Start of the range.
  final int start;

  /// Creates a new [RouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  RouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory RouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteSpecHttp2RouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
