// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_quality_spec_rule_range_expectation.dart';
import 'datascan_data_quality_spec_rule_regex_expectation.dart';
import 'datascan_data_quality_spec_rule_row_condition_expectation.dart';
import 'datascan_data_quality_spec_rule_set_expectation.dart';
import 'datascan_data_quality_spec_rule_sql_assertion.dart';
import 'datascan_data_quality_spec_rule_statistic_range_expectation.dart';
import 'datascan_data_quality_spec_rule_table_condition_expectation.dart';

class DatascanDataQualitySpecRule {
  /// The unnested column which this rule is evaluated against.
  final String? column;
  /// Description of the rule.
  /// The maximum length is 1,024 characters.
  final String? description;
  /// The dimension name a rule belongs to. Custom dimension name is supported with all uppercase letters and maximum length of 30 characters.
  final String dimension;
  /// Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules.
  final bool? ignoreNull;
  /// A mutable name for the rule.
  /// The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
  /// The maximum length is 63 characters.
  /// Must start with a letter.
  /// Must end with a number or a letter.
  final String? name;
  /// ColumnMap rule which evaluates whether each column value is null.
  final Map<String, dynamic>? nonNullExpectation;
  /// ColumnMap rule which evaluates whether each column value lies between a specified range.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleRangeExpectation? rangeExpectation;
  /// ColumnMap rule which evaluates whether each column value matches a specified regex.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleRegexExpectation? regexExpectation;
  /// Table rule which evaluates whether each row passes the specified condition.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleRowConditionExpectation? rowConditionExpectation;
  /// ColumnMap rule which evaluates whether each column value is contained by a specified set.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleSetExpectation? setExpectation;
  /// Table rule which evaluates whether any row matches invalid state.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleSqlAssertion? sqlAssertion;
  /// ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleStatisticRangeExpectation? statisticRangeExpectation;
  /// Whether the Rule is active or suspended. Default = false.
  final bool? suspended;
  /// Table rule which evaluates whether the provided expression is true.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleTableConditionExpectation? tableConditionExpectation;
  /// The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  final double? threshold;
  /// Row-level rule which evaluates whether each column value is unique.
  final Map<String, dynamic>? uniquenessExpectation;

  /// Creates a new [DatascanDataQualitySpecRule].
  /// [column] The unnested column which this rule is evaluated against.
  /// [description] Description of the rule.
  /// [dimension] The dimension name a rule belongs to. Custom dimension name is supported with all uppercase letters and maximum length of 30 characters.
  /// [ignoreNull] Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules.
  /// [name] A mutable name for the rule.
  /// [nonNullExpectation] ColumnMap rule which evaluates whether each column value is null.
  /// [rangeExpectation] ColumnMap rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectation] ColumnMap rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectation] Table rule which evaluates whether each row passes the specified condition.
  /// [setExpectation] ColumnMap rule which evaluates whether each column value is contained by a specified set.
  /// [sqlAssertion] Table rule which evaluates whether any row matches invalid state.
  /// [statisticRangeExpectation] ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [suspended] Whether the Rule is active or suspended. Default = false.
  /// [tableConditionExpectation] Table rule which evaluates whether the provided expression is true.
  /// [threshold] The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  /// [uniquenessExpectation] Row-level rule which evaluates whether each column value is unique.
  DatascanDataQualitySpecRule({
    this.column,
    this.description,
    required this.dimension,
    this.ignoreNull,
    this.name,
    this.nonNullExpectation,
    this.rangeExpectation,
    this.regexExpectation,
    this.rowConditionExpectation,
    this.setExpectation,
    this.sqlAssertion,
    this.statisticRangeExpectation,
    this.suspended,
    this.tableConditionExpectation,
    this.threshold,
    this.uniquenessExpectation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'description': ?description,
      'dimension': dimension,
      'ignoreNull': ?ignoreNull,
      'name': ?name,
      'nonNullExpectation': ?nonNullExpectation,
      'rangeExpectation': ?rangeExpectation == null ? null : rangeExpectation!.toMap(),
      'regexExpectation': ?regexExpectation == null ? null : regexExpectation!.toMap(),
      'rowConditionExpectation': ?rowConditionExpectation == null ? null : rowConditionExpectation!.toMap(),
      'setExpectation': ?setExpectation == null ? null : setExpectation!.toMap(),
      'sqlAssertion': ?sqlAssertion == null ? null : sqlAssertion!.toMap(),
      'statisticRangeExpectation': ?statisticRangeExpectation == null ? null : statisticRangeExpectation!.toMap(),
      'suspended': ?suspended,
      'tableConditionExpectation': ?tableConditionExpectation == null ? null : tableConditionExpectation!.toMap(),
      'threshold': ?threshold,
      'uniquenessExpectation': ?uniquenessExpectation,
    };
  }

  factory DatascanDataQualitySpecRule.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRule(
      column: map['column'] == null ? null : map['column'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      dimension: map['dimension'] as String,
      ignoreNull: map['ignoreNull'] == null ? null : map['ignoreNull'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      nonNullExpectation: map['nonNullExpectation'] == null ? null : (map['nonNullExpectation'] as Map).cast<String, dynamic>(),
      rangeExpectation: map['rangeExpectation'] == null ? null : DatascanDataQualitySpecRuleRangeExpectation.fromMap((map['rangeExpectation'] as Map).cast<String, dynamic>()),
      regexExpectation: map['regexExpectation'] == null ? null : DatascanDataQualitySpecRuleRegexExpectation.fromMap((map['regexExpectation'] as Map).cast<String, dynamic>()),
      rowConditionExpectation: map['rowConditionExpectation'] == null ? null : DatascanDataQualitySpecRuleRowConditionExpectation.fromMap((map['rowConditionExpectation'] as Map).cast<String, dynamic>()),
      setExpectation: map['setExpectation'] == null ? null : DatascanDataQualitySpecRuleSetExpectation.fromMap((map['setExpectation'] as Map).cast<String, dynamic>()),
      sqlAssertion: map['sqlAssertion'] == null ? null : DatascanDataQualitySpecRuleSqlAssertion.fromMap((map['sqlAssertion'] as Map).cast<String, dynamic>()),
      statisticRangeExpectation: map['statisticRangeExpectation'] == null ? null : DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap((map['statisticRangeExpectation'] as Map).cast<String, dynamic>()),
      suspended: map['suspended'] == null ? null : map['suspended'] as bool,
      tableConditionExpectation: map['tableConditionExpectation'] == null ? null : DatascanDataQualitySpecRuleTableConditionExpectation.fromMap((map['tableConditionExpectation'] as Map).cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
      uniquenessExpectation: map['uniquenessExpectation'] == null ? null : (map['uniquenessExpectation'] as Map).cast<String, dynamic>(),
    );
  }
}

