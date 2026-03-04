// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttpRouteMatchHeaderMatchRange {
  final pulumi.Input<int> end;
  final pulumi.Input<int> start;

  /// Creates a new [GetRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  GetRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecHttpRouteMatchHeaderMatchRange(
      end: pulumi.Input.fromValue(map['end'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}
