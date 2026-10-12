// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange {
  final pulumi.Input<int> end;
  final pulumi.Input<int> start;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange].
  /// [end] Required.
  /// [start] Required.
  const GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHeaderMatchRange(
      end: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['end'])),
      start: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['start'])),
    );
  }
}
