// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advances setting to customize StackEnsemble run.
class StackEnsembleSettings {
  /// Optional parameters to pass to the initializer of the meta-learner.
  final pulumi.Input<dynamic>? stackMetaLearnerKWargs;
  /// Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  final pulumi.Input<double?>? stackMetaLearnerTrainPercentage;
  /// The meta-learner is a model trained on the output of the individual heterogeneous models.\r\nDefault meta-learners are LogisticRegression for classification tasks (or LogisticRegressionCV if cross-validation is enabled) and ElasticNet for regression/forecasting tasks (or ElasticNetCV if cross-validation is enabled).\r\nThis parameter can be one of the following strings: LogisticRegression, LogisticRegressionCV, LightGBMClassifier, ElasticNet, ElasticNetCV, LightGBMRegressor, or LinearRegression
  final pulumi.Input<dynamic>? stackMetaLearnerType;

  /// Creates a new [StackEnsembleSettings].
  /// [stackMetaLearnerKWargs] Optional parameters to pass to the initializer of the meta-learner.
  /// [stackMetaLearnerTrainPercentage] Specifies the proportion of the training set (when choosing train and validation type of training) to be reserved for training the meta-learner. Default value is 0.2.
  /// [stackMetaLearnerType] The meta-learner is a model trained on the output of the individual heterogeneous models.\r\nDefault meta-learners are LogisticRegression for classification tasks (or LogisticRegressionCV if cross-validation is enabled) and ElasticNet for regression/forecasting tasks (or ElasticNetCV if cross-validation is enabled).\r\nThis parameter can be one of the following strings: LogisticRegression, LogisticRegressionCV, LightGBMClassifier, ElasticNet, ElasticNetCV, LightGBMRegressor, or LinearRegression
  StackEnsembleSettings({
    this.stackMetaLearnerKWargs,
    pulumi.Input<double?>? stackMetaLearnerTrainPercentage,
    pulumi.Input<dynamic>? stackMetaLearnerType,
  }) : stackMetaLearnerTrainPercentage = stackMetaLearnerTrainPercentage ?? pulumi.Input.fromValue(0.2), stackMetaLearnerType = stackMetaLearnerType ?? pulumi.Input.fromValue('None');

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
      stackMetaLearnerTrainPercentage: (() { final guardedValue = map['stackMetaLearnerTrainPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      stackMetaLearnerType: (() { final guardedValue = map['stackMetaLearnerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
