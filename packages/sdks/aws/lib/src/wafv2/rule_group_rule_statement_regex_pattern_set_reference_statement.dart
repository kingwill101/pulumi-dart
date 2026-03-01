// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_field_to_match.dart';
import 'rule_group_rule_statement_regex_pattern_set_reference_statement_text_transformation.dart';

class RuleGroupRuleStatementRegexPatternSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  final String arn;
  /// The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  final RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatch? fieldToMatch;
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  /// At least one required.
  /// See Text Transformation below for details.
  final List<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation> textTransformations;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the Regex Pattern Set that this statement references.
  /// [fieldToMatch] The part of a web request that you want AWS WAF to inspect. See Field to Match below for details.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
  RuleGroupRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fieldToMatch': ?fieldToMatch == null ? null : fieldToMatch!.toMap(),
      'textTransformations': pulumi.Input.encodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation, Map<String, dynamic>>(textTransformations, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatement(
      arn: map['arn'] as String,
      fieldToMatch: map['fieldToMatch'] == null ? null : RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap((map['fieldToMatch'] as Map).cast<String, dynamic>()),
      textTransformations: pulumi.Input.decodeList<RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation>(map['textTransformations'], (value) => RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

