// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  final pulumi.Input<String> arn;

  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch
  >?
  fieldToMatch;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final pulumi.Input<
    List<
      RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation
    >
  >
  textTransformations;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fieldToMatch':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch,
            Map<String, dynamic>
          >(fieldToMatch, (value) => value.toMap()),
      'textTransformations':
          pulumi.Input.mapInputValue<
            List<
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation
            >,
            List<Map<String, dynamic>>
          >(
            textTransformations,
            (value) =>
                pulumi.Input.encodeList<
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      fieldToMatch: (() {
        final guardedValue = map['fieldToMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textTransformations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation
        >(
          map['textTransformations']!,
          (value) =>
              RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
