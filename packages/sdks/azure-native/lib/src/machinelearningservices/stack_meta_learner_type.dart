/// The meta-learner is a model trained on the output of the individual heterogeneous models.\r\nDefault meta-learners are LogisticRegression for classification tasks (or LogisticRegressionCV if cross-validation is enabled) and ElasticNet for regression/forecasting tasks (or ElasticNetCV if cross-validation is enabled).\r\nThis parameter can be one of the following strings: LogisticRegression, LogisticRegressionCV, LightGBMClassifier, ElasticNet, ElasticNetCV, LightGBMRegressor, or LinearRegression
enum StackMetaLearnerType {
  none("None"),
  logisticRegression("LogisticRegression"),
  logisticRegressionCV("LogisticRegressionCV"),
  lightGBMClassifier("LightGBMClassifier"),
  elasticNet("ElasticNet"),
  elasticNetCV("ElasticNetCV"),
  lightGBMRegressor("LightGBMRegressor"),
  linearRegression("LinearRegression");

  const StackMetaLearnerType(this.wireValue);
  final String wireValue;

  static StackMetaLearnerType fromValue(String value) {
    for (final item in StackMetaLearnerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StackMetaLearnerType value: $value');
  }
}
