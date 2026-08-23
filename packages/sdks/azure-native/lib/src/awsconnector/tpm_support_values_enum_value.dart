// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TpmSupportValuesEnumValue
class TpmSupportValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TpmSupportValuesEnumValue].
  /// [value] Property value
  const TpmSupportValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TpmSupportValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return TpmSupportValuesEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
