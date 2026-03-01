// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';
import 'individual_outcome_outcome_summary.dart';

/// Step Id and outcome of each individual step that was run as a group with other steps with the same configuration.
class IndividualOutcome {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final int? multistepNumber;
  final IndividualOutcomeOutcomeSummary? outcomeSummary;

  /// How long it took for this step to run.
  final Duration? runDuration;
  final String? stepId;

  /// Creates a new [IndividualOutcome].
  /// [multistepNumber] Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  /// [outcomeSummary] Optional.
  /// [runDuration] How long it took for this step to run.
  /// [stepId] Optional.
  IndividualOutcome({
    this.multistepNumber,
    this.outcomeSummary,
    this.runDuration,
    this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multistepNumber': ?multistepNumber,
      'outcomeSummary': ?outcomeSummary == null ? null : outcomeSummary!.value,
      'runDuration': ?runDuration == null ? null : runDuration!.toMap(),
      'stepId': ?stepId,
    };
  }

  factory IndividualOutcome.fromMap(Map<String, dynamic> map) {
    return IndividualOutcome(
      multistepNumber: map['multistepNumber'] == null
          ? null
          : map['multistepNumber'] as int,
      outcomeSummary: map['outcomeSummary'] == null
          ? null
          : IndividualOutcomeOutcomeSummary.fromValue(
              map['outcomeSummary'] as String,
            ),
      runDuration: map['runDuration'] == null
          ? null
          : Duration.fromMap(
              (map['runDuration'] as Map).cast<String, dynamic>(),
            ),
      stepId: map['stepId'] == null ? null : map['stepId'] as String,
    );
  }
}
