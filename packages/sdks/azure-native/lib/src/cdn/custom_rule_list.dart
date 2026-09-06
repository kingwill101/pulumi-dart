// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule.dart';

/// Defines contents of custom rules
class CustomRuleList {
  /// List of rules
  final pulumi.Input<List<CustomRule>?>? rules;

  /// Creates a new [CustomRuleList].
  /// [rules] List of rules
  const CustomRuleList({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CustomRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRuleList.fromMap(Map<String, dynamic> map) {
    return CustomRuleList(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRule>(guardedValue, (value) => CustomRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
