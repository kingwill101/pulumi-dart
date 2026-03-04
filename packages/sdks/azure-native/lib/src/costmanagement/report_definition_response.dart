// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_dataset_response.dart';
import 'report_time_period_response.dart';

/// The definition of a report.
class ReportDefinitionResponse {
  /// Has definition for data in this report.
  final pulumi.Input<ReportDatasetResponse>? dataset;

  /// Has time period for pulling data for the report.
  final pulumi.Input<ReportTimePeriodResponse>? timePeriod;

  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final pulumi.Input<String> timeframe;

  /// The type of the report.
  final pulumi.Input<String> type;

  /// Creates a new [ReportDefinitionResponse].
  /// [dataset] Has definition for data in this report.
  /// [timePeriod] Has time period for pulling data for the report.
  /// [timeframe] The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  /// [type] The type of the report.
  ReportDefinitionResponse({
    this.dataset,
    this.timePeriod,
    required this.timeframe,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset':
          ?pulumi.Input.mapOptionalInputValue<
            ReportDatasetResponse,
            Map<String, dynamic>
          >(dataset, (value) => value.toMap()),
      'timePeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ReportTimePeriodResponse,
            Map<String, dynamic>
          >(timePeriod, (value) => value.toMap()),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory ReportDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ReportDefinitionResponse(
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportDatasetResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timePeriod: (() {
        final guardedValue = map['timePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReportTimePeriodResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeframe: pulumi.Input.fromValue(map['timeframe'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
