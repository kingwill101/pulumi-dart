// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule_response.dart';

/// Defines contents of custom rules
class CustomRuleListResponse {
  /// List of rules
  final pulumi.Input<List<CustomRuleResponse>>? rules;

  /// Creates a new [CustomRuleListResponse].
  /// [rules] List of rules
  CustomRuleListResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CustomRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CustomRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRuleListResponse.fromMap(Map<String, dynamic> map) {
    return CustomRuleListResponse(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<CustomRuleResponse>(map['rules'], (value) => CustomRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

