// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_aggregation.dart';
import 'report_dataset_configuration.dart';
import 'report_filter.dart';
import 'report_grouping.dart';

/// The definition of data present in the report.
class ReportDataset {
  /// Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  final pulumi.Input<Map<String, ReportAggregation>>? aggregation;

  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final pulumi.Input<ReportDatasetConfiguration>? configuration;

  /// Has filter expression to use in the report.
  final pulumi.Input<ReportFilter>? filter;

  /// The granularity of rows in the report.
  final pulumi.Input<String>? granularity;

  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final pulumi.Input<List<ReportGrouping>>? grouping;

  /// Creates a new [ReportDataset].
  /// [aggregation] Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  /// [configuration] Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  /// [filter] Has filter expression to use in the report.
  /// [granularity] The granularity of rows in the report.
  /// [grouping] Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  ReportDataset({
    this.aggregation,
    this.configuration,
    this.filter,
    this.granularity,
    this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ReportAggregation>,
            Map<String, Map<String, dynamic>>
          >(
            aggregation,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ReportAggregation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            ReportDatasetConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            ReportFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'granularity': ?granularity,
      'grouping':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReportGrouping>,
            List<Map<String, dynamic>>
          >(
            grouping,
            (value) =>
                pulumi.Input.encodeList<ReportGrouping, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ReportDataset.fromMap(Map<String, dynamic> map) {
    return ReportDataset(
      aggregation: (() {
        final guardedValue = map['aggregation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ReportAggregation>(
            guardedValue,
            (value) => ReportAggregation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportDatasetConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportFilter.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      granularity: (() {
        final guardedValue = map['granularity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      grouping: (() {
        final guardedValue = map['grouping'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReportGrouping>(
            guardedValue,
            (value) =>
                ReportGrouping.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
