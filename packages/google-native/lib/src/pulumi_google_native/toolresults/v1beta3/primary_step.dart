// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'individual_outcome.dart';
import 'primary_step_roll_up.dart';

/// Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.
class PrimaryStep {
  /// Step Id and outcome of each individual step.
  final List<IndividualOutcome>? individualOutcome;

  /// Rollup test status of multiple steps that were run with the same configuration as a group.
  final PrimaryStepRollUp? rollUp;

  PrimaryStep({
    this.individualOutcome,
    this.rollUp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final individualOutcomeValue = individualOutcome;
    if (individualOutcomeValue != null) {
      map['individualOutcome'] =
          Input.encodeList<IndividualOutcome, Map<String, dynamic>>(
              individualOutcomeValue, (value) => value.toMap());
    }
    final rollUpValue = rollUp;
    if (rollUpValue != null) {
      map['rollUp'] = rollUpValue.value;
    }
    return map;
  }

  factory PrimaryStep.fromMap(Map<String, dynamic> map) {
    return PrimaryStep(
      individualOutcome: map['individualOutcome'] == null
          ? null
          : Input.decodeList<IndividualOutcome>(
              map['individualOutcome'],
              (value) => IndividualOutcome.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rollUp: map['rollUp'] == null
          ? null
          : PrimaryStepRollUp.fromValue(map['rollUp'] as String),
    );
  }
}
