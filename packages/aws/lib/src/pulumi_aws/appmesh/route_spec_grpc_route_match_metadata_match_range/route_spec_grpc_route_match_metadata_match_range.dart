// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteMatchMetadataMatchRange {
  /// End of the range.
  final int end;

  /// Start of the range.
  final int start;

  RouteSpecGrpcRouteMatchMetadataMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory RouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatchMetadataMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
