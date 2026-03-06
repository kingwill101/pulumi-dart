// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TypeEnumValue
class TypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TypeEnumValue].
  /// [value] Property value
  const TypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TypeEnumValue.fromMap(Map<String, dynamic> map) {
    return TypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

