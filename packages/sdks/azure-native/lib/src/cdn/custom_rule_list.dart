// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule.dart';

/// Defines contents of custom rules
class CustomRuleList {
  /// List of rules
  final List<CustomRule>? rules;

  /// Creates a new [CustomRuleList].
  /// [rules] List of rules
  CustomRuleList({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<CustomRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory CustomRuleList.fromMap(Map<String, dynamic> map) {
    return CustomRuleList(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<CustomRule>(map['rules'], (value) => CustomRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

