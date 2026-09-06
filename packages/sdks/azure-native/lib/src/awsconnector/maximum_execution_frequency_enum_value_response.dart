// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MaximumExecutionFrequencyEnumValue
class MaximumExecutionFrequencyEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [MaximumExecutionFrequencyEnumValueResponse].
  /// [value] Property value
  const MaximumExecutionFrequencyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MaximumExecutionFrequencyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return MaximumExecutionFrequencyEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
