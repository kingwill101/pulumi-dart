// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_step_hadoop_jar_step/cluster_step_hadoop_jar_step.dart';

class ClusterStep {
  /// Action to take if the step fails. Valid values: `TERMINATE_JOB_FLOW`, `TERMINATE_CLUSTER`, `CANCEL_AND_WAIT`, and `CONTINUE`
  final String actionOnFailure;

  /// JAR file used for the step. See below.
  final ClusterStepHadoopJarStep hadoopJarStep;

  /// Name of the step.
  final String name;

  ClusterStep({
    required this.actionOnFailure,
    required this.hadoopJarStep,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionOnFailure'] = actionOnFailure;
    map['hadoopJarStep'] = hadoopJarStep.toMap();
    map['name'] = name;
    return map;
  }

  factory ClusterStep.fromMap(Map<String, dynamic> map) {
    return ClusterStep(
      actionOnFailure: map['actionOnFailure'] as String,
      hadoopJarStep: ClusterStepHadoopJarStep.fromMap(
          (map['hadoopJarStep'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
