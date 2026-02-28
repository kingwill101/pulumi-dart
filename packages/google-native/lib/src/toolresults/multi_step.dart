// ignore_for_file: unused_element, unnecessary_cast

import 'primary_step.dart';

/// Details when multiple steps are run with the same configuration as a group.
class MultiStep {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final int? multistepNumber;

  /// Present if it is a primary (original) step.
  final PrimaryStep? primaryStep;

  /// Step Id of the primary (original) step, which might be this step.
  final String? primaryStepId;

  /// Creates a new [MultiStep].
  /// [multistepNumber] Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  /// [primaryStep] Present if it is a primary (original) step.
  /// [primaryStepId] Step Id of the primary (original) step, which might be this step.
  MultiStep({
    this.multistepNumber,
    this.primaryStep,
    this.primaryStepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final multistepNumberValue = multistepNumber;
    if (multistepNumberValue != null) {
      map['multistepNumber'] = multistepNumberValue;
    }
    final primaryStepValue = primaryStep;
    if (primaryStepValue != null) {
      map['primaryStep'] = primaryStepValue.toMap();
    }
    final primaryStepIdValue = primaryStepId;
    if (primaryStepIdValue != null) {
      map['primaryStepId'] = primaryStepIdValue;
    }
    return map;
  }

  factory MultiStep.fromMap(Map<String, dynamic> map) {
    return MultiStep(
      multistepNumber:
          map['multistepNumber'] == null ? null : map['multistepNumber'] as int,
      primaryStep: map['primaryStep'] == null
          ? null
          : PrimaryStep.fromMap(
              (map['primaryStep'] as Map).cast<String, dynamic>()),
      primaryStepId:
          map['primaryStepId'] == null ? null : map['primaryStepId'] as String,
    );
  }
}
