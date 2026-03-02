// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArchitectureValuesEnumValue
class ArchitectureValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ArchitectureValuesEnumValue].
  /// [value] Property value
  ArchitectureValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArchitectureValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return ArchitectureValuesEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

