// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Step Id and outcome of each individual step that was run as a group with other steps with the same configuration.
class IndividualOutcomeResponse {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final int multistepNumber;
  final String outcomeSummary;
  /// How long it took for this step to run.
  final DurationResponse runDuration;
  final String stepId;

  /// Creates a new [IndividualOutcomeResponse].
  /// [multistepNumber] Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  /// [outcomeSummary] Required.
  /// [runDuration] How long it took for this step to run.
  /// [stepId] Required.
  IndividualOutcomeResponse({
    required this.multistepNumber,
    required this.outcomeSummary,
    required this.runDuration,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multistepNumber': multistepNumber,
      'outcomeSummary': outcomeSummary,
      'runDuration': runDuration.toMap(),
      'stepId': stepId,
    };
  }

  factory IndividualOutcomeResponse.fromMap(Map<String, dynamic> map) {
    return IndividualOutcomeResponse(
      multistepNumber: map['multistepNumber'] as int,
      outcomeSummary: map['outcomeSummary'] as String,
      runDuration: DurationResponse.fromMap((map['runDuration'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] as String,
    );
  }
}

