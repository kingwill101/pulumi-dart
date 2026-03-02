// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_aggregation.dart';
import 'report_config_dataset_configuration.dart';
import 'report_config_filter.dart';
import 'report_config_grouping.dart';
import 'report_config_sorting.dart';

/// The definition of data present in the report.
class ReportConfigDataset {
  /// Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  final pulumi.Input<Map<String, ReportConfigAggregation>>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final pulumi.Input<ReportConfigDatasetConfiguration>? configuration;
  /// Has filter expression to use in the report.
  final pulumi.Input<ReportConfigFilter>? filter;
  /// The granularity of rows in the report.
  final pulumi.Input<String>? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final pulumi.Input<List<ReportConfigGrouping>>? grouping;
  /// Array of order by expression to use in the report.
  final pulumi.Input<List<ReportConfigSorting>>? sorting;

  /// Creates a new [ReportConfigDataset].
  /// [aggregation] Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have up to 2 aggregation clauses.
  /// [configuration] Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  /// [filter] Has filter expression to use in the report.
  /// [granularity] The granularity of rows in the report.
  /// [grouping] Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  /// [sorting] Array of order by expression to use in the report.
  ReportConfigDataset({
    this.aggregation,
    this.configuration,
    this.filter,
    this.granularity,
    this.grouping,
    this.sorting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?pulumi.Input.mapOptionalInputValue<Map<String, ReportConfigAggregation>, Map<String, Map<String, dynamic>>>(aggregation, (value) => pulumi.Input.encodeMapValues<ReportConfigAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?pulumi.Input.mapOptionalInputValue<ReportConfigDatasetConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<ReportConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'granularity': ?granularity,
      'grouping': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigGrouping>, List<Map<String, dynamic>>>(grouping, (value) => pulumi.Input.encodeList<ReportConfigGrouping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorting': ?pulumi.Input.mapOptionalInputValue<List<ReportConfigSorting>, List<Map<String, dynamic>>>(sorting, (value) => pulumi.Input.encodeList<ReportConfigSorting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportConfigDataset.fromMap(Map<String, dynamic> map) {
    return ReportConfigDataset(
      aggregation: map['aggregation'] == null ? null : (pulumi.Input.decodeMapValues<ReportConfigAggregation>(map['aggregation']!, (value) => ReportConfigAggregation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configuration: map['configuration'] == null ? null : (ReportConfigDatasetConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      filter: map['filter'] == null ? null : (ReportConfigFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      granularity: map['granularity'] == null ? null : (map['granularity']! as String).input(),
      grouping: map['grouping'] == null ? null : (pulumi.Input.decodeList<ReportConfigGrouping>(map['grouping']!, (value) => ReportConfigGrouping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorting: map['sorting'] == null ? null : (pulumi.Input.decodeList<ReportConfigSorting>(map['sorting']!, (value) => ReportConfigSorting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

