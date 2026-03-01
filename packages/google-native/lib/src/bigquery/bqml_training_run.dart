// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [BqmlTrainingRun].
  /// [iterationResults] [Output-only, Beta] List of each iteration results.
  /// [startTime] [Output-only, Beta] Training run start time in milliseconds since the epoch.
  /// [state] [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  /// [trainingOptions] [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  BqmlTrainingRun({
    this.iterationResults,
    this.startTime,
    this.state,
    this.trainingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iterationResults': ?iterationResults == null
          ? null
          : pulumi.Input.encodeList<BqmlIterationResult, Map<String, dynamic>>(
              iterationResults!,
              (value) => value.toMap(),
            ),
      'startTime': ?startTime,
      'state': ?state,
      'trainingOptions': ?trainingOptions == null
          ? null
          : trainingOptions!.toMap(),
    };
  }

  factory BqmlTrainingRun.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRun(
      iterationResults: map['iterationResults'] == null
          ? null
          : pulumi.Input.decodeList<BqmlIterationResult>(
              map['iterationResults'],
              (value) => BqmlIterationResult.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      trainingOptions: map['trainingOptions'] == null
          ? null
          : BqmlTrainingRunTrainingOptions.fromMap(
              (map['trainingOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
