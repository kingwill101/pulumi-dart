// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_rule_range_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_regex_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_row_condition_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_set_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_table_condition_expectation_response.dart';

/// A rule captures data quality intent about a data source.
class GoogleCloudDataplexV1DataQualityRuleResponse {
  /// Optional. The unnested column which this rule is evaluated against.
  final String column;

  /// Optional. Description of the rule. The maximum length is 1,024 characters.
  final String description;

  /// The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final String dimension;

  /// Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  final bool ignoreNull;

  /// Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  final String name;

  /// Row-level rule which evaluates whether each column value is null.
  final Map<String, dynamic> nonNullExpectation;

  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse
      rangeExpectation;

  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse
      regexExpectation;

  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse
      rowConditionExpectation;

  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse
      setExpectation;

  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse
      statisticRangeExpectation;

  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse
      tableConditionExpectation;

  /// Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  final double threshold;

  /// Row-level rule which evaluates whether each column value is unique.
  final Map<String, dynamic> uniquenessExpectation;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleResponse].
  /// [column] Optional. The unnested column which this rule is evaluated against.
  /// [description] Optional. Description of the rule. The maximum length is 1,024 characters.
  /// [dimension] The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  /// [ignoreNull] Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  /// [name] Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  /// [nonNullExpectation] Row-level rule which evaluates whether each column value is null.
  /// [rangeExpectation] Row-level rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectation] Row-level rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectation] Row-level rule which evaluates whether each row in a table passes the specified condition.
  /// [setExpectation] Row-level rule which evaluates whether each column value is contained by a specified set.
  /// [statisticRangeExpectation] Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [tableConditionExpectation] Aggregate rule which evaluates whether the provided expression is true for a table.
  /// [threshold] Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  /// [uniquenessExpectation] Row-level rule which evaluates whether each column value is unique.
  GoogleCloudDataplexV1DataQualityRuleResponse({
    required this.column,
    required this.description,
    required this.dimension,
    required this.ignoreNull,
    required this.name,
    required this.nonNullExpectation,
    required this.rangeExpectation,
    required this.regexExpectation,
    required this.rowConditionExpectation,
    required this.setExpectation,
    required this.statisticRangeExpectation,
    required this.tableConditionExpectation,
    required this.threshold,
    required this.uniquenessExpectation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['description'] = description;
    map['dimension'] = dimension;
    map['ignoreNull'] = ignoreNull;
    map['name'] = name;
    map['nonNullExpectation'] = nonNullExpectation;
    map['rangeExpectation'] = rangeExpectation.toMap();
    map['regexExpectation'] = regexExpectation.toMap();
    map['rowConditionExpectation'] = rowConditionExpectation.toMap();
    map['setExpectation'] = setExpectation.toMap();
    map['statisticRangeExpectation'] = statisticRangeExpectation.toMap();
    map['tableConditionExpectation'] = tableConditionExpectation.toMap();
    map['threshold'] = threshold;
    map['uniquenessExpectation'] = uniquenessExpectation;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleResponse(
      column: map['column'] as String,
      description: map['description'] as String,
      dimension: map['dimension'] as String,
      ignoreNull: map['ignoreNull'] as bool,
      name: map['name'] as String,
      nonNullExpectation:
          (map['nonNullExpectation'] as Map).cast<String, dynamic>(),
      rangeExpectation:
          GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse.fromMap(
              (map['rangeExpectation'] as Map).cast<String, dynamic>()),
      regexExpectation:
          GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse.fromMap(
              (map['regexExpectation'] as Map).cast<String, dynamic>()),
      rowConditionExpectation:
          GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse
              .fromMap((map['rowConditionExpectation'] as Map)
                  .cast<String, dynamic>()),
      setExpectation:
          GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse.fromMap(
              (map['setExpectation'] as Map).cast<String, dynamic>()),
      statisticRangeExpectation:
          GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse
              .fromMap((map['statisticRangeExpectation'] as Map)
                  .cast<String, dynamic>()),
      tableConditionExpectation:
          GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse
              .fromMap((map['tableConditionExpectation'] as Map)
                  .cast<String, dynamic>()),
      threshold: map['threshold'] as double,
      uniquenessExpectation:
          (map['uniquenessExpectation'] as Map).cast<String, dynamic>(),
    );
  }
}
