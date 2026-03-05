// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectVisibilityTypeEnumValue
class ProjectVisibilityTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ProjectVisibilityTypeEnumValue].
  /// [value] Property value
  ProjectVisibilityTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ProjectVisibilityTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ProjectVisibilityTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

