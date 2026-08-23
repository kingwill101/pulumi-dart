// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatusNameEnumValue
class StatusNameEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StatusNameEnumValue].
  /// [value] Property value
  const StatusNameEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusNameEnumValue.fromMap(Map<String, dynamic> map) {
    return StatusNameEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
