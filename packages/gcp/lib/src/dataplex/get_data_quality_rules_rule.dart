// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_quality_rules_rule_range_expectation.dart';
import 'get_data_quality_rules_rule_regex_expectation.dart';
import 'get_data_quality_rules_rule_row_condition_expectation.dart';
import 'get_data_quality_rules_rule_set_expectation.dart';
import 'get_data_quality_rules_rule_sql_assertion.dart';
import 'get_data_quality_rules_rule_statistic_range_expectation.dart';
import 'get_data_quality_rules_rule_table_condition_expectation.dart';

class GetDataQualityRulesRule {
  /// The unnested column which this rule is evaluated against.
  final String column;

  /// Description of the rule. (The maximum length is 1,024 characters.)
  final String description;

  /// The dimension a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "FRESHNESS", "VOLUME"
  final String dimension;

  /// Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing.
  /// This field is only valid for the following type of rules: RangeExpectation, RegexExpectation, SetExpectation, UniquenessExpectation
  final bool ignoreNull;

  /// A mutable name for the rule.
  /// The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
  /// The maximum length is 63 characters.
  /// Must start with a letter.
  /// Must end with a number or a letter.
  final String name;

  /// Row-level rule which evaluates whether each column value is null.
  final List<Map<String, dynamic>> nonNullExpectations;

  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final List<GetDataQualityRulesRuleRangeExpectation> rangeExpectations;

  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final List<GetDataQualityRulesRuleRegexExpectation> regexExpectations;

  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final List<GetDataQualityRulesRuleRowConditionExpectation>
  rowConditionExpectations;

  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final List<GetDataQualityRulesRuleSetExpectation> setExpectations;

  /// Aggregate rule which evaluates the number of rows returned for the provided statement. If any rows are returned, this rule fails.
  final List<GetDataQualityRulesRuleSqlAssertion> sqlAssertions;

  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final List<GetDataQualityRulesRuleStatisticRangeExpectation>
  statisticRangeExpectations;

  /// Whether the Rule is active or suspended. Default is false.
  final bool suspended;

  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final List<GetDataQualityRulesRuleTableConditionExpectation>
  tableConditionExpectations;

  /// The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). This field is only valid for row-level type rules.
  final double threshold;

  /// Row-level rule which evaluates whether each column value is unique.
  final List<Map<String, dynamic>> uniquenessExpectations;

  /// Creates a new [GetDataQualityRulesRule].
  /// [column] The unnested column which this rule is evaluated against.
  /// [description] Description of the rule. (The maximum length is 1,024 characters.)
  /// [dimension] The dimension a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "FRESHNESS", "VOLUME"
  /// [ignoreNull] Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing.
  /// [name] A mutable name for the rule.
  /// [nonNullExpectations] Row-level rule which evaluates whether each column value is null.
  /// [rangeExpectations] Row-level rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectations] Row-level rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectations] Row-level rule which evaluates whether each row in a table passes the specified condition.
  /// [setExpectations] Row-level rule which evaluates whether each column value is contained by a specified set.
  /// [sqlAssertions] Aggregate rule which evaluates the number of rows returned for the provided statement. If any rows are returned, this rule fails.
  /// [statisticRangeExpectations] Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [suspended] Whether the Rule is active or suspended. Default is false.
  /// [tableConditionExpectations] Aggregate rule which evaluates whether the provided expression is true for a table.
  /// [threshold] The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). This field is only valid for row-level type rules.
  /// [uniquenessExpectations] Row-level rule which evaluates whether each column value is unique.
  GetDataQualityRulesRule({
    required this.column,
    required this.description,
    required this.dimension,
    required this.ignoreNull,
    required this.name,
    required this.nonNullExpectations,
    required this.rangeExpectations,
    required this.regexExpectations,
    required this.rowConditionExpectations,
    required this.setExpectations,
    required this.sqlAssertions,
    required this.statisticRangeExpectations,
    required this.suspended,
    required this.tableConditionExpectations,
    required this.threshold,
    required this.uniquenessExpectations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'description': description,
      'dimension': dimension,
      'ignoreNull': ignoreNull,
      'name': name,
      'nonNullExpectations': nonNullExpectations,
      'rangeExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleRangeExpectation,
            Map<String, dynamic>
          >(rangeExpectations, (value) => value.toMap()),
      'regexExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleRegexExpectation,
            Map<String, dynamic>
          >(regexExpectations, (value) => value.toMap()),
      'rowConditionExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleRowConditionExpectation,
            Map<String, dynamic>
          >(rowConditionExpectations, (value) => value.toMap()),
      'setExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleSetExpectation,
            Map<String, dynamic>
          >(setExpectations, (value) => value.toMap()),
      'sqlAssertions':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleSqlAssertion,
            Map<String, dynamic>
          >(sqlAssertions, (value) => value.toMap()),
      'statisticRangeExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleStatisticRangeExpectation,
            Map<String, dynamic>
          >(statisticRangeExpectations, (value) => value.toMap()),
      'suspended': suspended,
      'tableConditionExpectations':
          pulumi.Input.encodeList<
            GetDataQualityRulesRuleTableConditionExpectation,
            Map<String, dynamic>
          >(tableConditionExpectations, (value) => value.toMap()),
      'threshold': threshold,
      'uniquenessExpectations': uniquenessExpectations,
    };
  }

  factory GetDataQualityRulesRule.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRule(
      column: map['column'] as String,
      description: map['description'] as String,
      dimension: map['dimension'] as String,
      ignoreNull: map['ignoreNull'] as bool,
      name: map['name'] as String,
      nonNullExpectations: (map['nonNullExpectations'] as List)
          .cast<Map<String, dynamic>>(),
      rangeExpectations:
          pulumi.Input.decodeList<GetDataQualityRulesRuleRangeExpectation>(
            map['rangeExpectations'],
            (value) => GetDataQualityRulesRuleRangeExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      regexExpectations:
          pulumi.Input.decodeList<GetDataQualityRulesRuleRegexExpectation>(
            map['regexExpectations'],
            (value) => GetDataQualityRulesRuleRegexExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      rowConditionExpectations:
          pulumi
              .Input.decodeList<GetDataQualityRulesRuleRowConditionExpectation>(
            map['rowConditionExpectations'],
            (value) => GetDataQualityRulesRuleRowConditionExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      setExpectations:
          pulumi.Input.decodeList<GetDataQualityRulesRuleSetExpectation>(
            map['setExpectations'],
            (value) => GetDataQualityRulesRuleSetExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      sqlAssertions:
          pulumi.Input.decodeList<GetDataQualityRulesRuleSqlAssertion>(
            map['sqlAssertions'],
            (value) => GetDataQualityRulesRuleSqlAssertion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      statisticRangeExpectations:
          pulumi.Input.decodeList<
            GetDataQualityRulesRuleStatisticRangeExpectation
          >(
            map['statisticRangeExpectations'],
            (value) => GetDataQualityRulesRuleStatisticRangeExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      suspended: map['suspended'] as bool,
      tableConditionExpectations:
          pulumi.Input.decodeList<
            GetDataQualityRulesRuleTableConditionExpectation
          >(
            map['tableConditionExpectations'],
            (value) => GetDataQualityRulesRuleTableConditionExpectation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      threshold: map['threshold'] as double,
      uniquenessExpectations: (map['uniquenessExpectations'] as List)
          .cast<Map<String, dynamic>>(),
    );
  }
}
