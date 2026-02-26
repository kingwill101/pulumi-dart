// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecGrpcRouteMatchMetadataMatchRange {
  final int end;
  final int start;

  GetRouteSpecGrpcRouteMatchMetadataMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GetRouteSpecGrpcRouteMatchMetadataMatchRange.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatchMetadataMatchRange(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
