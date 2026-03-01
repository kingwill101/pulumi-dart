// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecGrpcRouteMatchMetadataMatchRange {
  /// End of the range.
  final int end;
  /// Start of the range.
  final int start;

  /// Creates a new [RouteSpecGrpcRouteMatchMetadataMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  RouteSpecGrpcRouteMatchMetadataMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory RouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatchMetadataMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}

