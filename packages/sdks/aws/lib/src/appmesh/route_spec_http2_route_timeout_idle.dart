// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteTimeoutIdle {
  /// Unit of time. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;
  /// Number of time units. Minimum value of `0`.
  final pulumi.Input<int> value;

  /// Creates a new [RouteSpecHttp2RouteTimeoutIdle].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  const RouteSpecHttp2RouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecHttp2RouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeoutIdle(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
