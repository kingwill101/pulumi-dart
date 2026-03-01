// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteMatchHeaderMatchRange {
  /// End of the range.
  final int end;

  /// Start of the range.
  final int start;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  GatewayRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GatewayRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayRouteSpecHttpRouteMatchHeaderMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
