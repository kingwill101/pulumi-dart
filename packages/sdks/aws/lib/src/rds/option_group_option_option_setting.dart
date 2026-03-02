// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptionGroupOptionOptionSetting {
  /// Name of the setting.
  final pulumi.Input<String> name;
  /// Value of the setting.
  final pulumi.Input<String> value;

  /// Creates a new [OptionGroupOptionOptionSetting].
  /// [name] Name of the setting.
  /// [value] Value of the setting.
  OptionGroupOptionOptionSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory OptionGroupOptionOptionSetting.fromMap(Map<String, dynamic> map) {
    return OptionGroupOptionOptionSetting(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

