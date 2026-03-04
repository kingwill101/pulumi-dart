// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttp2RouteMatchHeaderMatchRange {
  final pulumi.Input<int> end;
  final pulumi.Input<int> start;

  /// Creates a new [GetRouteSpecHttp2RouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetRouteSpecHttp2RouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GetRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecHttp2RouteMatchHeaderMatchRange(
      end: pulumi.Input.fromValue(map['end'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}
