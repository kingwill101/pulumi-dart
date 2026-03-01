// ignore_for_file: unused_element, unnecessary_cast


/// Advances setting to customize StackEnsemble run.
class StackEnsembleSettings {
  /// Optional parameters to pass to the initializer of the meta-learner.
  final dynamic stackMetaLearnerKWargs;
  /// Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  final double? stackMetaLearnerTrainPercentage;
  /// The meta-learner is a model trained on the output of the individual heterogeneous models.
  final String? stackMetaLearnerType;

  /// Creates a new [StackEnsembleSettings].
  /// [stackMetaLearnerKWargs] Optional parameters to pass to the initializer of the meta-learner.
  /// [stackMetaLearnerTrainPercentage] Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  /// [stackMetaLearnerType] The meta-learner is a model trained on the output of the individual heterogeneous models.
  StackEnsembleSettings({
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
      stackMetaLearnerKWargs: map['stackMetaLearnerKWargs'] == null ? null : map['stackMetaLearnerKWargs'],
      stackMetaLearnerTrainPercentage: map['stackMetaLearnerTrainPercentage'] == null ? null : map['stackMetaLearnerTrainPercentage'] as double,
      stackMetaLearnerType: map['stackMetaLearnerType'] == null ? null : map['stackMetaLearnerType'] as String,
    );
  }
}

