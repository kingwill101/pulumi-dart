// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobExperimentConfig {
  /// Name of the SageMaker AI Experiment to associate with.
  final pulumi.Input<String>? experimentName;
  /// Name of the Experiment Run to associate with.
  final pulumi.Input<String>? runName;
  /// Display name for the trial component.
  final pulumi.Input<String>? trialComponentDisplayName;
  /// Name of the SageMaker AI Trial to associate with.
  final pulumi.Input<String>? trialName;

  /// Creates a new [TrainingJobExperimentConfig].
  /// [experimentName] Name of the SageMaker AI Experiment to associate with.
  /// [runName] Name of the Experiment Run to associate with.
  /// [trialComponentDisplayName] Display name for the trial component.
  /// [trialName] Name of the SageMaker AI Trial to associate with.
  const TrainingJobExperimentConfig({
    this.experimentName,
    this.runName,
    this.trialComponentDisplayName,
    this.trialName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentName': ?experimentName,
      'runName': ?runName,
      'trialComponentDisplayName': ?trialComponentDisplayName,
      'trialName': ?trialName,
    };
  }

  factory TrainingJobExperimentConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobExperimentConfig(
      experimentName: (() { final guardedValue = map['experimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runName: (() { final guardedValue = map['runName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trialComponentDisplayName: (() { final guardedValue = map['trialComponentDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trialName: (() { final guardedValue = map['trialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
