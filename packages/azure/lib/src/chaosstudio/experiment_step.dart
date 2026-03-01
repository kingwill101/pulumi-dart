// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_step_branch.dart';

class ExperimentStep {
  /// One or more `branch` blocks as defined above.
  final List<ExperimentStepBranch> branches;
  /// The name of the Step.
  final String name;

  /// Creates a new [ExperimentStep].
  /// [branches] One or more `branch` blocks as defined above.
  /// [name] The name of the Step.
  ExperimentStep({
    required this.branches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.encodeList<ExperimentStepBranch, Map<String, dynamic>>(branches, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ExperimentStep.fromMap(Map<String, dynamic> map) {
    return ExperimentStep(
      branches: pulumi.Input.decodeList<ExperimentStepBranch>(map['branches'], (value) => ExperimentStepBranch.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

