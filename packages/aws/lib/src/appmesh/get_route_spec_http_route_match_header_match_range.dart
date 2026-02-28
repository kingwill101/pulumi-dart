// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteMatchHeaderMatchRange {
  final int end;
  final int start;

  /// Creates a new [GetRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
