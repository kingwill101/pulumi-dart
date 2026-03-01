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
  final Map<String, ReportConfigAggregationResponse>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final ReportConfigDatasetConfigurationResponse? configuration;
  /// Has filter expression to use in the report.
  final ReportConfigFilterResponse? filter;
  /// The granularity of rows in the report.
  final String? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final List<ReportConfigGroupingResponse>? grouping;
  /// Array of order by expression to use in the report.
  final List<ReportConfigSortingResponse>? sorting;

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
      'aggregation': ?aggregation == null ? null : pulumi.Input.encodeMapValues<ReportConfigAggregationResponse, Map<String, dynamic>>(aggregation!, (value) => value.toMap()),
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'filter': ?filter == null ? null : filter!.toMap(),
      'granularity': ?granularity,
      'grouping': ?grouping == null ? null : pulumi.Input.encodeList<ReportConfigGroupingResponse, Map<String, dynamic>>(grouping!, (value) => value.toMap()),
      'sorting': ?sorting == null ? null : pulumi.Input.encodeList<ReportConfigSortingResponse, Map<String, dynamic>>(sorting!, (value) => value.toMap()),
    };
  }

  factory ReportConfigDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigDatasetResponse(
      aggregation: map['aggregation'] == null ? null : pulumi.Input.decodeMapValues<ReportConfigAggregationResponse>(map['aggregation'], (value) => ReportConfigAggregationResponse.fromMap((value as Map).cast<String, dynamic>())),
      configuration: map['configuration'] == null ? null : ReportConfigDatasetConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null ? null : ReportConfigFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      granularity: map['granularity'] == null ? null : map['granularity'] as String,
      grouping: map['grouping'] == null ? null : pulumi.Input.decodeList<ReportConfigGroupingResponse>(map['grouping'], (value) => ReportConfigGroupingResponse.fromMap((value as Map).cast<String, dynamic>())),
      sorting: map['sorting'] == null ? null : pulumi.Input.decodeList<ReportConfigSortingResponse>(map['sorting'], (value) => ReportConfigSortingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

