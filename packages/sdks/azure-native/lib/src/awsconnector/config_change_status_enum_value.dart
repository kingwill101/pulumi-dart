// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConfigChangeStatusEnumValue
class ConfigChangeStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigChangeStatusEnumValue].
  /// [value] Property value
  ConfigChangeStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ConfigChangeStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ConfigChangeStatusEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

