// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_dataset.dart';
import 'report_time_period.dart';

/// The definition of a report.
class ReportDefinition {
  /// Has definition for data in this report.
  final pulumi.Input<ReportDataset>? dataset;

  /// Has time period for pulling data for the report.
  final pulumi.Input<ReportTimePeriod>? timePeriod;

  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final pulumi.Input<String> timeframe;

  /// The type of the report.
  final pulumi.Input<String> type;

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
      'dataset':
          ?pulumi.Input.mapOptionalInputValue<
            ReportDataset,
            Map<String, dynamic>
          >(dataset, (value) => value.toMap()),
      'timePeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ReportTimePeriod,
            Map<String, dynamic>
          >(timePeriod, (value) => value.toMap()),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory ReportDefinition.fromMap(Map<String, dynamic> map) {
    return ReportDefinition(
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportDataset.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      timePeriod: (() {
        final guardedValue = map['timePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportTimePeriod.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeframe: pulumi.Input.fromValue(map['timeframe'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
