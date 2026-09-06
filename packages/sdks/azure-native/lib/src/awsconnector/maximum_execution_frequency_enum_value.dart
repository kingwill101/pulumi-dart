// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaximumExecutionFrequencyEnumValue
class MaximumExecutionFrequencyEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [MaximumExecutionFrequencyEnumValue].
  /// [value] Property value
  const MaximumExecutionFrequencyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MaximumExecutionFrequencyEnumValue.fromMap(Map<String, dynamic> map) {
    return MaximumExecutionFrequencyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
