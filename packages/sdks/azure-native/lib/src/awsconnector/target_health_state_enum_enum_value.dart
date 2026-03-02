// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetHealthStateEnumEnumValue
class TargetHealthStateEnumEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TargetHealthStateEnumEnumValue].
  /// [value] Property value
  TargetHealthStateEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthStateEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return TargetHealthStateEnumEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

