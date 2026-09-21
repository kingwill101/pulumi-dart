// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTimeoutHttpIdle {
  /// Unit of time.
  final pulumi.Input<String> unit;
  /// Value for the JSON.
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttpIdle].
  /// [unit] Unit of time.
  /// [value] Value for the JSON.
  const GetVirtualNodeSpecListenerTimeoutHttpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttpIdle.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttpIdle(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['value'])),
    );
  }
}
