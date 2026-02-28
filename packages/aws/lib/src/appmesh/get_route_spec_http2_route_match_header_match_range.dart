// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttp2RouteMatchHeaderMatchRange {
  final int end;
  final int start;

  /// Creates a new [GetRouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetRouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
