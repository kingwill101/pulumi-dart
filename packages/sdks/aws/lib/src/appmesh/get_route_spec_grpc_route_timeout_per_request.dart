// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecGrpcRouteTimeoutPerRequest {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecGrpcRouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  const GetRouteSpecGrpcRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecGrpcRouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteTimeoutPerRequest(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['value'])),
    );
  }
}
