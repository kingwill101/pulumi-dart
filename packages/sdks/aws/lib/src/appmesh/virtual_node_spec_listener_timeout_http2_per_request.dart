// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerTimeoutHttp2PerRequest {
  /// Unit of time. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;
  /// Value for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<int> value;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp2PerRequest].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Value for the JSON. Must be between 1 and 100 characters in length.
  const VirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
