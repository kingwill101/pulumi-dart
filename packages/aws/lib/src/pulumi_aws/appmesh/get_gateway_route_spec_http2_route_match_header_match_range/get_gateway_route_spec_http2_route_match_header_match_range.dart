// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange {
  final int end;
  final int start;

  GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
