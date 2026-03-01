// ignore_for_file: unused_element, unnecessary_cast

import 'report_dataset.dart';
import 'report_time_period.dart';

/// The definition of a report.
class ReportDefinition {
  /// Has definition for data in this report.
  final ReportDataset? dataset;
  /// Has time period for pulling data for the report.
  final ReportTimePeriod? timePeriod;
  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final String timeframe;
  /// The type of the report.
  final String type;

  /// Creates a new [ReportDefinition].
  /// [dataset] Has definition for data in this report.
  /// [timePeriod] Has time period for pulling data for the report.
  /// [timeframe] The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  /// [type] The type of the report.
  ReportDefinition({
    this.dataset,
    this.timePeriod,
    required this.timeframe,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'timePeriod': ?timePeriod == null ? null : timePeriod!.toMap(),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory ReportDefinition.fromMap(Map<String, dynamic> map) {
    return ReportDefinition(
      dataset: map['dataset'] == null ? null : ReportDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      timePeriod: map['timePeriod'] == null ? null : ReportTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>()),
      timeframe: map['timeframe'] as String,
      type: map['type'] as String,
    );
  }
}

