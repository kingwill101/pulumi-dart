// ignore_for_file: unused_element, unnecessary_cast

import 'primary_step_response.dart';

/// Details when multiple steps are run with the same configuration as a group.
class MultiStepResponse {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final int multistepNumber;

  /// Present if it is a primary (original) step.
  final PrimaryStepResponse primaryStep;

  /// Step Id of the primary (original) step, which might be this step.
  final String primaryStepId;

  /// Creates a new [MultiStepResponse].
  /// [multistepNumber] Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  /// [primaryStep] Present if it is a primary (original) step.
  /// [primaryStepId] Step Id of the primary (original) step, which might be this step.
  MultiStepResponse({
    required this.multistepNumber,
    required this.primaryStep,
    required this.primaryStepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multistepNumber': multistepNumber,
      'primaryStep': primaryStep.toMap(),
      'primaryStepId': primaryStepId,
    };
  }

  factory MultiStepResponse.fromMap(Map<String, dynamic> map) {
    return MultiStepResponse(
      multistepNumber: map['multistepNumber'] as int,
      primaryStep: PrimaryStepResponse.fromMap(
        (map['primaryStep'] as Map).cast<String, dynamic>(),
      ),
      primaryStepId: map['primaryStepId'] as String,
    );
  }
}
