// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecGrpcRouteMatchMetadataMatchRange {
  final int end;
  final int start;

  /// Creates a new [GetRouteSpecGrpcRouteMatchMetadataMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetRouteSpecGrpcRouteMatchMetadataMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GetRouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatchMetadataMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}

