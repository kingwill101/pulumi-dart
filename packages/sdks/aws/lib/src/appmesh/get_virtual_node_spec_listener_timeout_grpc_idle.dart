// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTimeoutGrpcIdle {
  /// Unit of time.
  final pulumi.Input<String> unit;
  /// Value for the JSON.
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpcIdle].
  /// [unit] Unit of time.
  /// [value] Value for the JSON.
  const GetVirtualNodeSpecListenerTimeoutGrpcIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpcIdle.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutGrpcIdle(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
