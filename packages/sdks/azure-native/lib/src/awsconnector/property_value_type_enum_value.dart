// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PropertyValueTypeEnumValue
class PropertyValueTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PropertyValueTypeEnumValue].
  /// [value] Property value
  PropertyValueTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PropertyValueTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return PropertyValueTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

