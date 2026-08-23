// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceStateNameEnumValue
class InstanceStateNameEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceStateNameEnumValue].
  /// [value] Property value
  const InstanceStateNameEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceStateNameEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceStateNameEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
