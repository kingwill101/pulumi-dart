// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecTcpRouteTimeoutIdle {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetRouteSpecTcpRouteTimeoutIdle].
  /// [unit] Required.
  /// [value] Required.
  const GetRouteSpecTcpRouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecTcpRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteTimeoutIdle(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
