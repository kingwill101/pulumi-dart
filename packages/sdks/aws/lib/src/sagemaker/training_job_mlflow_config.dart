// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobMlflowConfig {
  /// Name of the MLflow experiment.
  final pulumi.Input<String>? mlflowExperimentName;
  /// ARN of the MLflow tracking server.
  final pulumi.Input<String> mlflowResourceArn;
  /// Name of the MLflow run.
  final pulumi.Input<String>? mlflowRunName;

  /// Creates a new [TrainingJobMlflowConfig].
  /// [mlflowExperimentName] Name of the MLflow experiment.
  /// [mlflowResourceArn] ARN of the MLflow tracking server.
  /// [mlflowRunName] Name of the MLflow run.
  const TrainingJobMlflowConfig({
    this.mlflowExperimentName,
    required this.mlflowResourceArn,
    this.mlflowRunName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mlflowExperimentName': ?mlflowExperimentName,
      'mlflowResourceArn': mlflowResourceArn,
      'mlflowRunName': ?mlflowRunName,
    };
  }

  factory TrainingJobMlflowConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobMlflowConfig(
      mlflowExperimentName: (() { final guardedValue = map['mlflowExperimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mlflowResourceArn: pulumi.Input.fromValue(map['mlflowResourceArn'] as String),
      mlflowRunName: (() { final guardedValue = map['mlflowRunName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
