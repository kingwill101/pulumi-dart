// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArchitectureValuesEnumValue
class ArchitectureValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [ArchitectureValuesEnumValueResponse].
  /// [value] Property value
  const ArchitectureValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArchitectureValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArchitectureValuesEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
