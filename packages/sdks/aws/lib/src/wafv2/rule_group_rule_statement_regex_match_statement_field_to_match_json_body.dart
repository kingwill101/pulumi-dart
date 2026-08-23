// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_regex_match_statement_field_to_match_json_body_match_pattern.dart';

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBody {
  /// What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are `EVALUATE_AS_STRING`, `MATCH` and `NO_MATCH`.
  final pulumi.Input<String>? invalidFallbackBehavior;
  /// The patterns to look for in the JSON body. You must specify exactly one setting: either `all` or `includedPaths`. See [JsonMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_JsonMatchPattern.html) for details.
  final pulumi.Input<RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern> matchPattern;
  /// The parts of the JSON to match against using the `matchPattern`. Valid values are `ALL`, `KEY` and `VALUE`.
  final pulumi.Input<String> matchScope;
  /// What to do if the body is larger than can be inspected. Valid values are `CONTINUE` (default), `MATCH` and `NO_MATCH`.
  final pulumi.Input<String>? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBody].
  /// [invalidFallbackBehavior] What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are `EVALUATE_AS_STRING`, `MATCH` and `NO_MATCH`.
  /// [matchPattern] The patterns to look for in the JSON body. You must specify exactly one setting: either `all` or `includedPaths`. See [JsonMatchPattern](https://docs.aws.amazon.com/waf/latest/APIReference/API_JsonMatchPattern.html) for details.
  /// [matchScope] The parts of the JSON to match against using the `matchPattern`. Valid values are `ALL`, `KEY` and `VALUE`.
  /// [oversizeHandling] What to do if the body is larger than can be inspected. Valid values are `CONTINUE` (default), `MATCH` and `NO_MATCH`.
  const RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    required this.matchPattern,
    required this.matchScope,
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invalidFallbackBehavior': ?invalidFallbackBehavior,
      'matchPattern': pulumi.Input.mapInputValue<RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern, Map<String, dynamic>>(matchPattern, (value) => value.toMap()),
      'matchScope': matchScope,
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBody(
      invalidFallbackBehavior: (() { final guardedValue = map['invalidFallbackBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchPattern: pulumi.Input.fromValue(RuleGroupRuleStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap((map['matchPattern']! as Map).cast<String, dynamic>())),
      matchScope: pulumi.Input.fromValue(map['matchScope'] as String),
      oversizeHandling: (() { final guardedValue = map['oversizeHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
