// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_aggregation_response.dart';
import 'report_dataset_configuration_response.dart';
import 'report_filter_response.dart';
import 'report_grouping_response.dart';

/// The definition of data present in the report.
class ReportDatasetResponse {
  /// Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  final pulumi.Input<Map<String, ReportAggregationResponse>?>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final pulumi.Input<ReportDatasetConfigurationResponse?>? configuration;
  /// Has filter expression to use in the report.
  final pulumi.Input<ReportFilterResponse?>? filter;
  /// The granularity of rows in the report.
  final pulumi.Input<String?>? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final pulumi.Input<List<ReportGroupingResponse>?>? grouping;

  /// Creates a new [ReportDatasetResponse].
  /// [aggregation] Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  /// [configuration] Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  /// [filter] Has filter expression to use in the report.
  /// [granularity] The granularity of rows in the report.
  /// [grouping] Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  const ReportDatasetResponse({
    this.aggregation,
    this.configuration,
    this.filter,
    this.granularity,
    this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?pulumi.Input.mapOptionalInputValue<Map<String, ReportAggregationResponse>, Map<String, Map<String, dynamic>>>(aggregation, (value) => pulumi.Input.encodeMapValues<ReportAggregationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?pulumi.Input.mapOptionalInputValue<ReportDatasetConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<ReportFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'granularity': ?granularity,
      'grouping': ?pulumi.Input.mapOptionalInputValue<List<ReportGroupingResponse>, List<Map<String, dynamic>>>(grouping, (value) => pulumi.Input.encodeList<ReportGroupingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ReportDatasetResponse(
      aggregation: (() { final guardedValue = map['aggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ReportAggregationResponse>(guardedValue, (value) => ReportAggregationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportDatasetConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      granularity: (() { final guardedValue = map['granularity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grouping: (() { final guardedValue = map['grouping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportGroupingResponse>(guardedValue, (value) => ReportGroupingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
