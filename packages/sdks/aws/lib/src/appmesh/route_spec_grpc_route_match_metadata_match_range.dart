// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecGrpcRouteMatchMetadataMatchRange {
  /// End of the range.
  final pulumi.Input<int> end;
  /// Start of the range.
  final pulumi.Input<int> start;

  /// Creates a new [RouteSpecGrpcRouteMatchMetadataMatchRange].
  /// [end] End of the range.
  /// [start] Start of the range.
  const RouteSpecGrpcRouteMatchMetadataMatchRange({
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
      end: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['end'])),
      start: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['start'])),
    );
  }
}
