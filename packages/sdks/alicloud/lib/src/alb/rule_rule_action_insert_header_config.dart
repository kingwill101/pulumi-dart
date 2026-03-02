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
  RuleRuleActionInsertHeaderConfig({
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
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueType: map['valueType'] == null ? null : (map['valueType']! as String).input(),
    );
  }
}

