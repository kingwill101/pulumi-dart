// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'individual_outcome.dart';
import 'primary_step_roll_up.dart';

/// Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.
class PrimaryStep {
  /// Step Id and outcome of each individual step.
  final List<IndividualOutcome>? individualOutcome;

  /// Rollup test status of multiple steps that were run with the same configuration as a group.
  final PrimaryStepRollUp? rollUp;

  /// Creates a new [PrimaryStep].
  /// [individualOutcome] Step Id and outcome of each individual step.
  /// [rollUp] Rollup test status of multiple steps that were run with the same configuration as a group.
  PrimaryStep({this.individualOutcome, this.rollUp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'individualOutcome': ?individualOutcome == null
          ? null
          : pulumi.Input.encodeList<IndividualOutcome, Map<String, dynamic>>(
              individualOutcome!,
              (value) => value.toMap(),
            ),
      'rollUp': ?rollUp == null ? null : rollUp!.value,
    };
  }

  factory PrimaryStep.fromMap(Map<String, dynamic> map) {
    return PrimaryStep(
      individualOutcome: map['individualOutcome'] == null
          ? null
          : pulumi.Input.decodeList<IndividualOutcome>(
              map['individualOutcome'],
              (value) => IndividualOutcome.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      rollUp: map['rollUp'] == null
          ? null
          : PrimaryStepRollUp.fromValue(map['rollUp'] as String),
    );
  }
}
