// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConfigChangeStatusEnumValue
class ConfigChangeStatusEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ConfigChangeStatusEnumValue].
  /// [value] Property value
  const ConfigChangeStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ConfigChangeStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ConfigChangeStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
