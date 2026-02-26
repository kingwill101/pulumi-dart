// ignore_for_file: unused_element, unnecessary_cast

import '../datascan_data_quality_spec_rule_range_expectation/datascan_data_quality_spec_rule_range_expectation.dart';
import '../datascan_data_quality_spec_rule_regex_expectation/datascan_data_quality_spec_rule_regex_expectation.dart';
import '../datascan_data_quality_spec_rule_row_condition_expectation/datascan_data_quality_spec_rule_row_condition_expectation.dart';
import '../datascan_data_quality_spec_rule_set_expectation/datascan_data_quality_spec_rule_set_expectation.dart';
import '../datascan_data_quality_spec_rule_sql_assertion/datascan_data_quality_spec_rule_sql_assertion.dart';
import '../datascan_data_quality_spec_rule_statistic_range_expectation/datascan_data_quality_spec_rule_statistic_range_expectation.dart';
import '../datascan_data_quality_spec_rule_table_condition_expectation/datascan_data_quality_spec_rule_table_condition_expectation.dart';

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
  final DatascanDataQualitySpecRuleRowConditionExpectation?
      rowConditionExpectation;

  /// ColumnMap rule which evaluates whether each column value is contained by a specified set.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleSetExpectation? setExpectation;

  /// Table rule which evaluates whether any row matches invalid state.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleSqlAssertion? sqlAssertion;

  /// ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleStatisticRangeExpectation?
      statisticRangeExpectation;

  /// Whether the Rule is active or suspended. Default = false.
  final bool? suspended;

  /// Table rule which evaluates whether the provided expression is true.
  /// Structure is documented below.
  final DatascanDataQualitySpecRuleTableConditionExpectation?
      tableConditionExpectation;

  /// The minimum ratio of<span pulumi-lang-nodejs=" passingRows " pulumi-lang-dotnet=" PassingRows " pulumi-lang-go=" passingRows " pulumi-lang-python=" passing_rows " pulumi-lang-yaml=" passingRows " pulumi-lang-java=" passingRows "> passing_rows </span>/<span pulumi-lang-nodejs=" totalRows " pulumi-lang-dotnet=" TotalRows " pulumi-lang-go=" totalRows " pulumi-lang-python=" total_rows " pulumi-lang-yaml=" totalRows " pulumi-lang-java=" totalRows "> total_rows </span>required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  final double? threshold;

  /// Row-level rule which evaluates whether each column value is unique.
  final Map<String, dynamic>? uniquenessExpectation;

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
    final map = <String, dynamic>{};
    final columnValue = column;
    if (columnValue != null) {
      map['column'] = columnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['dimension'] = dimension;
    final ignoreNullValue = ignoreNull;
    if (ignoreNullValue != null) {
      map['ignoreNull'] = ignoreNullValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nonNullExpectationValue = nonNullExpectation;
    if (nonNullExpectationValue != null) {
      map['nonNullExpectation'] = nonNullExpectationValue;
    }
    final rangeExpectationValue = rangeExpectation;
    if (rangeExpectationValue != null) {
      map['rangeExpectation'] = rangeExpectationValue.toMap();
    }
    final regexExpectationValue = regexExpectation;
    if (regexExpectationValue != null) {
      map['regexExpectation'] = regexExpectationValue.toMap();
    }
    final rowConditionExpectationValue = rowConditionExpectation;
    if (rowConditionExpectationValue != null) {
      map['rowConditionExpectation'] = rowConditionExpectationValue.toMap();
    }
    final setExpectationValue = setExpectation;
    if (setExpectationValue != null) {
      map['setExpectation'] = setExpectationValue.toMap();
    }
    final sqlAssertionValue = sqlAssertion;
    if (sqlAssertionValue != null) {
      map['sqlAssertion'] = sqlAssertionValue.toMap();
    }
    final statisticRangeExpectationValue = statisticRangeExpectation;
    if (statisticRangeExpectationValue != null) {
      map['statisticRangeExpectation'] = statisticRangeExpectationValue.toMap();
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    final tableConditionExpectationValue = tableConditionExpectation;
    if (tableConditionExpectationValue != null) {
      map['tableConditionExpectation'] = tableConditionExpectationValue.toMap();
    }
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    final uniquenessExpectationValue = uniquenessExpectation;
    if (uniquenessExpectationValue != null) {
      map['uniquenessExpectation'] = uniquenessExpectationValue;
    }
    return map;
  }

  factory DatascanDataQualitySpecRule.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRule(
      column: map['column'] == null ? null : map['column'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      dimension: map['dimension'] as String,
      ignoreNull: map['ignoreNull'] == null ? null : map['ignoreNull'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      nonNullExpectation: map['nonNullExpectation'] == null
          ? null
          : (map['nonNullExpectation'] as Map).cast<String, dynamic>(),
      rangeExpectation: map['rangeExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleRangeExpectation.fromMap(
              (map['rangeExpectation'] as Map).cast<String, dynamic>()),
      regexExpectation: map['regexExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleRegexExpectation.fromMap(
              (map['regexExpectation'] as Map).cast<String, dynamic>()),
      rowConditionExpectation: map['rowConditionExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleRowConditionExpectation.fromMap(
              (map['rowConditionExpectation'] as Map).cast<String, dynamic>()),
      setExpectation: map['setExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleSetExpectation.fromMap(
              (map['setExpectation'] as Map).cast<String, dynamic>()),
      sqlAssertion: map['sqlAssertion'] == null
          ? null
          : DatascanDataQualitySpecRuleSqlAssertion.fromMap(
              (map['sqlAssertion'] as Map).cast<String, dynamic>()),
      statisticRangeExpectation: map['statisticRangeExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap(
              (map['statisticRangeExpectation'] as Map)
                  .cast<String, dynamic>()),
      suspended: map['suspended'] == null ? null : map['suspended'] as bool,
      tableConditionExpectation: map['tableConditionExpectation'] == null
          ? null
          : DatascanDataQualitySpecRuleTableConditionExpectation.fromMap(
              (map['tableConditionExpectation'] as Map)
                  .cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
      uniquenessExpectation: map['uniquenessExpectation'] == null
          ? null
          : (map['uniquenessExpectation'] as Map).cast<String, dynamic>(),
    );
  }
}
