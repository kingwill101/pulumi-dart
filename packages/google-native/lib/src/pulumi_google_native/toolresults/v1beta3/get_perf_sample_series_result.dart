// ignore_for_file: unused_element, unnecessary_cast

import 'basic_perf_sample_series_response.dart';

/// Result data returned by getPerfSampleSeries.
class GetPerfSampleSeriesResult {
  /// Basic series represented by a line chart
  final BasicPerfSampleSeriesResponse basicPerfSampleSeries;

  /// A tool results execution ID.
  final String executionId;

  /// A tool results history ID.
  final String historyId;

  /// The cloud project
  final String project;

  /// A sample series id
  final String sampleSeriesId;

  /// A tool results step ID.
  final String stepId;

  GetPerfSampleSeriesResult({
    required this.basicPerfSampleSeries,
    required this.executionId,
    required this.historyId,
    required this.project,
    required this.sampleSeriesId,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicPerfSampleSeries'] = basicPerfSampleSeries.toMap();
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    map['project'] = project;
    map['sampleSeriesId'] = sampleSeriesId;
    map['stepId'] = stepId;
    return map;
  }

  factory GetPerfSampleSeriesResult.fromMap(Map<String, dynamic> map) {
    return GetPerfSampleSeriesResult(
      basicPerfSampleSeries: BasicPerfSampleSeriesResponse.fromMap(
          (map['basicPerfSampleSeries'] as Map).cast<String, dynamic>()),
      executionId: map['executionId'] as String,
      historyId: map['historyId'] as String,
      project: map['project'] as String,
      sampleSeriesId: map['sampleSeriesId'] as String,
      stepId: map['stepId'] as String,
    );
  }
}
