// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionInsertHeaderConfig {
  /// The key of the query string.
  final pulumi.Input<String> key;
  /// The value of the query string.
  final pulumi.Input<String> value;
  /// The value type of the inserted header field.
  final pulumi.Input<String> valueType;

  /// Creates a new [GetRulesRuleRuleActionInsertHeaderConfig].
  /// [key] The key of the query string.
  /// [value] The value of the query string.
  /// [valueType] The value type of the inserted header field.
  GetRulesRuleRuleActionInsertHeaderConfig({
    required this.key,
    required this.value,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
      'valueType': valueType,
    };
  }

  factory GetRulesRuleRuleActionInsertHeaderConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionInsertHeaderConfig(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

