// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotObfuscationSetting {
  /// Whether Amazon Lex obscures slot values in conversation logs. Valid values are `DefaultObfuscation` and `None`.
  final pulumi.Input<String> obfuscationSettingType;

  /// Creates a new [V2modelsSlotObfuscationSetting].
  /// [obfuscationSettingType] Whether Amazon Lex obscures slot values in conversation logs. Valid values are `DefaultObfuscation` and `None`.
  V2modelsSlotObfuscationSetting({
    required this.obfuscationSettingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obfuscationSettingType': obfuscationSettingType,
    };
  }

  factory V2modelsSlotObfuscationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotObfuscationSetting(
      obfuscationSettingType: pulumi.Input.fromValue(map['obfuscationSettingType'] as String),
    );
  }
}

