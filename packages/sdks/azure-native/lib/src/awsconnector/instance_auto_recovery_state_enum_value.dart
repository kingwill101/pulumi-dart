// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAutoRecoveryStateEnumValue
class InstanceAutoRecoveryStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceAutoRecoveryStateEnumValue].
  /// [value] Property value
  InstanceAutoRecoveryStateEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory InstanceAutoRecoveryStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceAutoRecoveryStateEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
