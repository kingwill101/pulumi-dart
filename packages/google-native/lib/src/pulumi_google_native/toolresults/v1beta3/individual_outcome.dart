// ignore_for_file: unused_element, unnecessary_cast

import 'duration_toolresults_v1beta3.dart';
import 'individual_outcome_outcome_summary.dart';

/// Step Id and outcome of each individual step that was run as a group with other steps with the same configuration.
class IndividualOutcome {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final int? multistepNumber;
  final IndividualOutcomeOutcomeSummary? outcomeSummary;

  /// How long it took for this step to run.
  final DurationToolresultsV1beta3? runDuration;
  final String? stepId;

  IndividualOutcome({
    this.multistepNumber,
    this.outcomeSummary,
    this.runDuration,
    this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final multistepNumberValue = multistepNumber;
    if (multistepNumberValue != null) {
      map['multistepNumber'] = multistepNumberValue;
    }
    final outcomeSummaryValue = outcomeSummary;
    if (outcomeSummaryValue != null) {
      map['outcomeSummary'] = outcomeSummaryValue.value;
    }
    final runDurationValue = runDuration;
    if (runDurationValue != null) {
      map['runDuration'] = runDurationValue.toMap();
    }
    final stepIdValue = stepId;
    if (stepIdValue != null) {
      map['stepId'] = stepIdValue;
    }
    return map;
  }

  factory IndividualOutcome.fromMap(Map<String, dynamic> map) {
    return IndividualOutcome(
      multistepNumber:
          map['multistepNumber'] == null ? null : map['multistepNumber'] as int,
      outcomeSummary: map['outcomeSummary'] == null
          ? null
          : IndividualOutcomeOutcomeSummary.fromValue(
              map['outcomeSummary'] as String),
      runDuration: map['runDuration'] == null
          ? null
          : DurationToolresultsV1beta3.fromMap(
              (map['runDuration'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] == null ? null : map['stepId'] as String,
    );
  }
}
