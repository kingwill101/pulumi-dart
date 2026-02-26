// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotObfuscationSetting {
  /// Whether Amazon Lex obscures slot values in conversation logs. Valid values are `DefaultObfuscation` and `None`.
  final String obfuscationSettingType;

  V2modelsSlotObfuscationSetting({
    required this.obfuscationSettingType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['obfuscationSettingType'] = obfuscationSettingType;
    return map;
  }

  factory V2modelsSlotObfuscationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotObfuscationSetting(
      obfuscationSettingType: map['obfuscationSettingType'] as String,
    );
  }
}
