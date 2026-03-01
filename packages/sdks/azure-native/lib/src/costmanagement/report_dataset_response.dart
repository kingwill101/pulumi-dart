// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_aggregation_response.dart';
import 'report_dataset_configuration_response.dart';
import 'report_filter_response.dart';
import 'report_grouping_response.dart';

/// The definition of data present in the report.
class ReportDatasetResponse {
  /// Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  final Map<String, ReportAggregationResponse>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final ReportDatasetConfigurationResponse? configuration;
  /// Has filter expression to use in the report.
  final ReportFilterResponse? filter;
  /// The granularity of rows in the report.
  final String? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final List<ReportGroupingResponse>? grouping;

  /// Creates a new [ReportDatasetResponse].
  /// [aggregation] Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  /// [configuration] Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  /// [filter] Has filter expression to use in the report.
  /// [granularity] The granularity of rows in the report.
  /// [grouping] Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  ReportDatasetResponse({
    this.aggregation,
    this.configuration,
    this.filter,
    this.granularity,
    this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?aggregation == null ? null : pulumi.Input.encodeMapValues<ReportAggregationResponse, Map<String, dynamic>>(aggregation!, (value) => value.toMap()),
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'filter': ?filter == null ? null : filter!.toMap(),
      'granularity': ?granularity,
      'grouping': ?grouping == null ? null : pulumi.Input.encodeList<ReportGroupingResponse, Map<String, dynamic>>(grouping!, (value) => value.toMap()),
    };
  }

  factory ReportDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ReportDatasetResponse(
      aggregation: map['aggregation'] == null ? null : pulumi.Input.decodeMapValues<ReportAggregationResponse>(map['aggregation'], (value) => ReportAggregationResponse.fromMap((value as Map).cast<String, dynamic>())),
      configuration: map['configuration'] == null ? null : ReportDatasetConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null ? null : ReportFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      granularity: map['granularity'] == null ? null : map['granularity'] as String,
      grouping: map['grouping'] == null ? null : pulumi.Input.decodeList<ReportGroupingResponse>(map['grouping'], (value) => ReportGroupingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

