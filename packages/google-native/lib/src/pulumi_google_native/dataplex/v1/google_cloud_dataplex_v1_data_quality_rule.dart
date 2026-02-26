// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_rule_range_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_regex_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_row_condition_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_set_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_table_condition_expectation.dart';

/// A rule captures data quality intent about a data source.
class GoogleCloudDataplexV1DataQualityRule {
  /// Optional. The unnested column which this rule is evaluated against.
  final String? column;

  /// Optional. Description of the rule. The maximum length is 1,024 characters.
  final String? description;

  /// The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final String dimension;

  /// Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  final bool? ignoreNull;

  /// Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  final String? name;

  /// Row-level rule which evaluates whether each column value is null.
  final Map<String, dynamic>? nonNullExpectation;

  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final GoogleCloudDataplexV1DataQualityRuleRangeExpectation? rangeExpectation;

  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final GoogleCloudDataplexV1DataQualityRuleRegexExpectation? regexExpectation;

  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation?
      rowConditionExpectation;

  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final GoogleCloudDataplexV1DataQualityRuleSetExpectation? setExpectation;

  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation?
      statisticRangeExpectation;

  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation?
      tableConditionExpectation;

  /// Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  final double? threshold;

  /// Row-level rule which evaluates whether each column value is unique.
  final Map<String, dynamic>? uniquenessExpectation;

  GoogleCloudDataplexV1DataQualityRule({
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
    this.statisticRangeExpectation,
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
    final statisticRangeExpectationValue = statisticRangeExpectation;
    if (statisticRangeExpectationValue != null) {
      map['statisticRangeExpectation'] = statisticRangeExpectationValue.toMap();
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

  factory GoogleCloudDataplexV1DataQualityRule.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRule(
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
          : GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromMap(
              (map['rangeExpectation'] as Map).cast<String, dynamic>()),
      regexExpectation: map['regexExpectation'] == null
          ? null
          : GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromMap(
              (map['regexExpectation'] as Map).cast<String, dynamic>()),
      rowConditionExpectation: map['rowConditionExpectation'] == null
          ? null
          : GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation.fromMap(
              (map['rowConditionExpectation'] as Map).cast<String, dynamic>()),
      setExpectation: map['setExpectation'] == null
          ? null
          : GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromMap(
              (map['setExpectation'] as Map).cast<String, dynamic>()),
      statisticRangeExpectation: map['statisticRangeExpectation'] == null
          ? null
          : GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
              .fromMap((map['statisticRangeExpectation'] as Map)
                  .cast<String, dynamic>()),
      tableConditionExpectation: map['tableConditionExpectation'] == null
          ? null
          : GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
              .fromMap((map['tableConditionExpectation'] as Map)
                  .cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
      uniquenessExpectation: map['uniquenessExpectation'] == null
          ? null
          : (map['uniquenessExpectation'] as Map).cast<String, dynamic>(),
    );
  }
}
