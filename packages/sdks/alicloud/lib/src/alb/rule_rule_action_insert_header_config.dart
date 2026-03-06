// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionInsertHeaderConfig {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;
  /// The value type of the inserted header field. Valid values:
  /// - `UserDefined`: a custom value
  /// - `ReferenceHeader`: uses a field of the user request header.
  /// - `SystemDefined`: a system value.
  final pulumi.Input<String>? valueType;

  /// Creates a new [RuleRuleActionInsertHeaderConfig].
  /// [key] Optional.
  /// [value] Optional.
  /// [valueType] The value type of the inserted header field. Valid values:
  const RuleRuleActionInsertHeaderConfig({
    this.key,
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
      'valueType': ?valueType,
    };
  }

  factory RuleRuleActionInsertHeaderConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionInsertHeaderConfig(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

