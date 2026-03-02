// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCheckItemConfigsConfigCustomConfig {
  /// The default value of the custom configuration item. The value is a string.
  final pulumi.Input<String> defaultValue;
  /// The name of the custom configuration item, which is unique in a check item.
  final pulumi.Input<String> name;
  /// The display name of the custom configuration item for internationalization.
  final pulumi.Input<String> showName;
  /// The type of the custom configuration item. The value is a JSON string.
  final pulumi.Input<String> typeDefine;
  /// The content of the description for the check item when the Type parameter is text.
  final pulumi.Input<String> value;

  /// Creates a new [GetCheckItemConfigsConfigCustomConfig].
  /// [defaultValue] The default value of the custom configuration item. The value is a string.
  /// [name] The name of the custom configuration item, which is unique in a check item.
  /// [showName] The display name of the custom configuration item for internationalization.
  /// [typeDefine] The type of the custom configuration item. The value is a JSON string.
  /// [value] The content of the description for the check item when the Type parameter is text.
  GetCheckItemConfigsConfigCustomConfig({
    required this.defaultValue,
    required this.name,
    required this.showName,
    required this.typeDefine,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': defaultValue,
      'name': name,
      'showName': showName,
      'typeDefine': typeDefine,
      'value': value,
    };
  }

  factory GetCheckItemConfigsConfigCustomConfig.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsConfigCustomConfig(
      defaultValue: (map['defaultValue'] as String).input(),
      name: (map['name'] as String).input(),
      showName: (map['showName'] as String).input(),
      typeDefine: (map['typeDefine'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

