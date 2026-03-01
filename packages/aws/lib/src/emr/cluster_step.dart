// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_step_hadoop_jar_step.dart';

class ClusterStep {
  /// Action to take if the step fails. Valid values: `TERMINATE_JOB_FLOW`, `TERMINATE_CLUSTER`, `CANCEL_AND_WAIT`, and `CONTINUE`
  final String actionOnFailure;

  /// JAR file used for the step. See below.
  final ClusterStepHadoopJarStep hadoopJarStep;

  /// Name of the step.
  final String name;

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
      'hadoopJarStep': hadoopJarStep.toMap(),
      'name': name,
    };
  }

  factory ClusterStep.fromMap(Map<String, dynamic> map) {
    return ClusterStep(
      actionOnFailure: map['actionOnFailure'] as String,
      hadoopJarStep: ClusterStepHadoopJarStep.fromMap(
        (map['hadoopJarStep'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
    );
  }
}
