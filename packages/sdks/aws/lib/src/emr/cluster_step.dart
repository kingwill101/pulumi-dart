// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_step_hadoop_jar_step.dart';

class ClusterStep {
  /// Action to take if the step fails. Valid values: `TERMINATE_JOB_FLOW`, `TERMINATE_CLUSTER`, `CANCEL_AND_WAIT`, and `CONTINUE`
  final pulumi.Input<String> actionOnFailure;

  /// JAR file used for the step. See below.
  final pulumi.Input<ClusterStepHadoopJarStep> hadoopJarStep;

  /// Name of the step.
  final pulumi.Input<String> name;

  /// Creates a new [ClusterStep].
  /// [actionOnFailure] Action to take if the step fails. Valid values: `TERMINATE_JOB_FLOW`, `TERMINATE_CLUSTER`, `CANCEL_AND_WAIT`, and `CONTINUE`
  /// [hadoopJarStep] JAR file used for the step. See below.
  /// [name] Name of the step.
  ClusterStep({
    required this.actionOnFailure,
    required this.hadoopJarStep,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnFailure': actionOnFailure,
      'hadoopJarStep':
          pulumi.Input.mapInputValue<
            ClusterStepHadoopJarStep,
            Map<String, dynamic>
          >(hadoopJarStep, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ClusterStep.fromMap(Map<String, dynamic> map) {
    return ClusterStep(
      actionOnFailure: pulumi.Input.fromValue(map['actionOnFailure'] as String),
      hadoopJarStep: pulumi.Input.fromValue(
        ClusterStepHadoopJarStep.fromMap(
          (map['hadoopJarStep']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
