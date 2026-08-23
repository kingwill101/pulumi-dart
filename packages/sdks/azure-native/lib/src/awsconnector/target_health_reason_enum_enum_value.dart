// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetHealthReasonEnumEnumValue
class TargetHealthReasonEnumEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TargetHealthReasonEnumEnumValue].
  /// [value] Property value
  const TargetHealthReasonEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthReasonEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return TargetHealthReasonEnumEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
