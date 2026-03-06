// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advances setting to customize StackEnsemble run.
class StackEnsembleSettings {
  /// Optional parameters to pass to the initializer of the meta-learner.
  final pulumi.Input<dynamic>? stackMetaLearnerKWargs;
  /// Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  final pulumi.Input<double>? stackMetaLearnerTrainPercentage;
  /// The meta-learner is a model trained on the output of the individual heterogeneous models.
  final pulumi.Input<String>? stackMetaLearnerType;

  /// Creates a new [StackEnsembleSettings].
  /// [stackMetaLearnerKWargs] Optional parameters to pass to the initializer of the meta-learner.
  /// [stackMetaLearnerTrainPercentage] Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  /// [stackMetaLearnerType] The meta-learner is a model trained on the output of the individual heterogeneous models.
  const StackEnsembleSettings({
    this.stackMetaLearnerKWargs,
    this.stackMetaLearnerTrainPercentage,
    this.stackMetaLearnerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stackMetaLearnerKWargs': ?stackMetaLearnerKWargs,
      'stackMetaLearnerTrainPercentage': ?stackMetaLearnerTrainPercentage,
      'stackMetaLearnerType': ?stackMetaLearnerType,
    };
  }

  factory StackEnsembleSettings.fromMap(Map<String, dynamic> map) {
    return StackEnsembleSettings(
      stackMetaLearnerKWargs: (() { final guardedValue = map['stackMetaLearnerKWargs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stackMetaLearnerTrainPercentage: (() { final guardedValue = map['stackMetaLearnerTrainPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      stackMetaLearnerType: (() { final guardedValue = map['stackMetaLearnerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

