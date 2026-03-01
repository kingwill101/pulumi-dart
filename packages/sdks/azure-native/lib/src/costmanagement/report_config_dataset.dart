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
  final Map<String, ReportConfigAggregation>? aggregation;
  /// Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided.
  final ReportConfigDatasetConfiguration? configuration;
  /// Has filter expression to use in the report.
  final ReportConfigFilter? filter;
  /// The granularity of rows in the report.
  final String? granularity;
  /// Array of group by expression to use in the report. Report can have up to 2 group by clauses.
  final List<ReportConfigGrouping>? grouping;
  /// Array of order by expression to use in the report.
  final List<ReportConfigSorting>? sorting;

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
      'aggregation': ?aggregation == null ? null : pulumi.Input.encodeMapValues<ReportConfigAggregation, Map<String, dynamic>>(aggregation!, (value) => value.toMap()),
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'filter': ?filter == null ? null : filter!.toMap(),
      'granularity': ?granularity,
      'grouping': ?grouping == null ? null : pulumi.Input.encodeList<ReportConfigGrouping, Map<String, dynamic>>(grouping!, (value) => value.toMap()),
      'sorting': ?sorting == null ? null : pulumi.Input.encodeList<ReportConfigSorting, Map<String, dynamic>>(sorting!, (value) => value.toMap()),
    };
  }

  factory ReportConfigDataset.fromMap(Map<String, dynamic> map) {
    return ReportConfigDataset(
      aggregation: map['aggregation'] == null ? null : pulumi.Input.decodeMapValues<ReportConfigAggregation>(map['aggregation'], (value) => ReportConfigAggregation.fromMap((value as Map).cast<String, dynamic>())),
      configuration: map['configuration'] == null ? null : ReportConfigDatasetConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null ? null : ReportConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      granularity: map['granularity'] == null ? null : map['granularity'] as String,
      grouping: map['grouping'] == null ? null : pulumi.Input.decodeList<ReportConfigGrouping>(map['grouping'], (value) => ReportConfigGrouping.fromMap((value as Map).cast<String, dynamic>())),
      sorting: map['sorting'] == null ? null : pulumi.Input.decodeList<ReportConfigSorting>(map['sorting'], (value) => ReportConfigSorting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

