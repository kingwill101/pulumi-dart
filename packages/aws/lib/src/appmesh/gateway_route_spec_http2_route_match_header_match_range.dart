// ignore_for_file: unused_element, unnecessary_cast


class GatewayRouteSpecHttp2RouteMatchHeaderMatchRange {
  /// End of the range.
  final int end;
  /// Start of the range.
  final int start;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  GatewayRouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}

