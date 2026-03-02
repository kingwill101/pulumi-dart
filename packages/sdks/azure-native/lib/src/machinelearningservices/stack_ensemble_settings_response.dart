// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advances setting to customize StackEnsemble run.
class StackEnsembleSettingsResponse {
  /// Optional parameters to pass to the initializer of the meta-learner.
  final pulumi.Input<dynamic>? stackMetaLearnerKWargs;
  /// Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  final pulumi.Input<double>? stackMetaLearnerTrainPercentage;
  /// The meta-learner is a model trained on the output of the individual heterogeneous models.
  final pulumi.Input<String>? stackMetaLearnerType;

  /// Creates a new [StackEnsembleSettingsResponse].
  /// [stackMetaLearnerKWargs] Optional parameters to pass to the initializer of the meta-learner.
  /// [stackMetaLearnerTrainPercentage] Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  /// [stackMetaLearnerType] The meta-learner is a model trained on the output of the individual heterogeneous models.
  StackEnsembleSettingsResponse({
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

  factory StackEnsembleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StackEnsembleSettingsResponse(
      stackMetaLearnerKWargs: map['stackMetaLearnerKWargs'] == null ? null : (map['stackMetaLearnerKWargs']).input(),
      stackMetaLearnerTrainPercentage: map['stackMetaLearnerTrainPercentage'] == null ? null : (map['stackMetaLearnerTrainPercentage'] as double).input(),
      stackMetaLearnerType: map['stackMetaLearnerType'] == null ? null : (map['stackMetaLearnerType'] as String).input(),
    );
  }
}

