// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bqml_iteration_result.dart';
import 'bqml_training_run_training_options.dart';

class BqmlTrainingRun {
  /// [Output-only, Beta] List of each iteration results.
  final List<BqmlIterationResult>? iterationResults;

  /// [Output-only, Beta] Training run start time in milliseconds since the epoch.
  final String? startTime;

  /// [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  final String? state;

  /// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  final BqmlTrainingRunTrainingOptions? trainingOptions;

  BqmlTrainingRun({
    this.iterationResults,
    this.startTime,
    this.state,
    this.trainingOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iterationResultsValue = iterationResults;
    if (iterationResultsValue != null) {
      map['iterationResults'] =
          Input.encodeList<BqmlIterationResult, Map<String, dynamic>>(
              iterationResultsValue, (value) => value.toMap());
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final trainingOptionsValue = trainingOptions;
    if (trainingOptionsValue != null) {
      map['trainingOptions'] = trainingOptionsValue.toMap();
    }
    return map;
  }

  factory BqmlTrainingRun.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRun(
      iterationResults: map['iterationResults'] == null
          ? null
          : Input.decodeList<BqmlIterationResult>(
              map['iterationResults'],
              (value) => BqmlIterationResult.fromMap(
                  (value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      trainingOptions: map['trainingOptions'] == null
          ? null
          : BqmlTrainingRunTrainingOptions.fromMap(
              (map['trainingOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
