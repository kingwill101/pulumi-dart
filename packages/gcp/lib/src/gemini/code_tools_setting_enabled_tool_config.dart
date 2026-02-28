// ignore_for_file: unused_element, unnecessary_cast

class CodeToolsSettingEnabledToolConfig {
  /// Key of the configuration item.
  final String key;

  /// Value of the configuration item.
  final String value;

  /// Creates a new [CodeToolsSettingEnabledToolConfig].
  /// [key] Key of the configuration item.
  /// [value] Value of the configuration item.
  CodeToolsSettingEnabledToolConfig({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory CodeToolsSettingEnabledToolConfig.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingEnabledToolConfig(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
