// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_contentwarehouse_v1_rule_response.dart';

/// Result data returned by getRuleSet.
class GetRuleSetResult {
  /// Short description of the rule-set.
  final String description;

  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  final String name;

  /// List of rules given by the customer.
  final List<GoogleCloudContentwarehouseV1RuleResponse> rules;

  /// Source of the rules i.e., customer name.
  final String source;

  GetRuleSetResult({
    required this.description,
    required this.name,
    required this.rules,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['rules'] = Input.encodeList<GoogleCloudContentwarehouseV1RuleResponse,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    map['source'] = source;
    return map;
  }

  factory GetRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetRuleSetResult(
      description: map['description'] as String,
      name: map['name'] as String,
      rules: Input.decodeList<GoogleCloudContentwarehouseV1RuleResponse>(
          map['rules'],
          (value) => GoogleCloudContentwarehouseV1RuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      source: map['source'] as String,
    );
  }
}
