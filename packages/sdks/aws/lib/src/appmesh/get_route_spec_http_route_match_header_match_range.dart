// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttpRouteMatchHeaderMatchRange {
  final pulumi.Input<int> end;
  final pulumi.Input<int> start;

  /// Creates a new [GetRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  const GetRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeaderMatchRange(
      end: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['end'])),
      start: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['start'])),
    );
  }
}
