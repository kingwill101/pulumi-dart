// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SimpleCriterionKeyForJobEnumValue
class SimpleCriterionKeyForJobEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [SimpleCriterionKeyForJobEnumValue].
  /// [value] Property value
  const SimpleCriterionKeyForJobEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SimpleCriterionKeyForJobEnumValue.fromMap(Map<String, dynamic> map) {
    return SimpleCriterionKeyForJobEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
