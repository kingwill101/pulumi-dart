// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange {
  final int end;
  final int start;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
