// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_aggregation_response.dart';
import 'report_config_dataset_configuration_response.dart';
import 'report_config_filter_response.dart';
import 'report_config_grouping_response.dart';
import 'report_config_sorting_response.dart';

/// The definition of data present in the report.
class ReportConfigDatasetResponse {
  /// Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  final pulumi.Input<Map<String, ReportConfigAggregationResponse>>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final pulumi.Input<ReportConfigDatasetConfigurationResponse>? configuration;
  /// Has filter expression to use in the report.
  final pulumi.Input<ReportConfigFilterResponse>? filter;
  /// The granularity of rows in the report.
  final pulumi.Input<String>? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final pulumi.Input<List<ReportConfigGroupingResponse>>? grouping;
  /// Array of order by expression to use in the report.
  final pulumi.Input<List<ReportConfigSortingResponse>>? sorting;

  /// Creates a new [ReportConfigDatasetResponse].
  /// [aggregation] Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  /// [configuration] Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  /// [filter] Has filter expression to use in the report.
  /// [granularity] The granularity of rows in the report.
  /// [grouping] Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  /// [sorting] Array of order by expression to use in the report.
  ReportConfigDatasetResponse({
    this.aggregation,
    this.configuration,
    this.filter,
    this.granularity,
    this.grouping,
    this.sorting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?pulumi.Input.mapOptionalInputValue<Map<String, ReportConfigAggregationResponse>, Map<String, Map<String, dynamic>>>(aggregation, (value) => pulumi.Input.encodeMapValues<ReportConfigAggregationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?pulumi.Input.mapOptionalInputValue<ReportConfigDatasetConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<ReportConfigFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'granularity': ?granularity,
      'grouping': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigGroupingResponse>, List<Map<String, dynamic>>>(grouping, (value) => pulumi.Input.encodeList<ReportConfigGroupingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorting': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigSortingResponse>, List<Map<String, dynamic>>>(sorting, (value) => pulumi.Input.encodeList<ReportConfigSortingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportConfigDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigDatasetResponse(
      aggregation: map['aggregation'] == null ? null : (pulumi.Input.decodeMapValues<ReportConfigAggregationResponse>(map['aggregation'], (value) => ReportConfigAggregationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configuration: map['configuration'] == null ? null : (ReportConfigDatasetConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      filter: map['filter'] == null ? null : (ReportConfigFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      granularity: map['granularity'] == null ? null : (map['granularity'] as String).input(),
      grouping: map['grouping'] == null ? null : (pulumi.Input.decodeList<ReportConfigGroupingResponse>(map['grouping'], (value) => ReportConfigGroupingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorting: map['sorting'] == null ? null : (pulumi.Input.decodeList<ReportConfigSortingResponse>(map['sorting'], (value) => ReportConfigSortingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

