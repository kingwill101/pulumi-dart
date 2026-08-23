// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected {
  /// Whether to complete tuning when convergence is detected.
  final pulumi.Input<String>? completeOnConvergence;

  /// Creates a new [HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected].
  /// [completeOnConvergence] Whether to complete tuning when convergence is detected.
  const HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected({
    this.completeOnConvergence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completeOnConvergence': ?completeOnConvergence,
    };
  }

  factory HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected(
      completeOnConvergence: (() { final guardedValue = map['completeOnConvergence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
