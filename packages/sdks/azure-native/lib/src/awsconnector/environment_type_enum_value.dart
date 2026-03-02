// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnvironmentTypeEnumValue
class EnvironmentTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentTypeEnumValue].
  /// [value] Property value
  EnvironmentTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnvironmentTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return EnvironmentTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

