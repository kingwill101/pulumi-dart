/// The meta-learner is a model trained on the output of the individual heterogeneous models.
enum StackMetaLearnerType {
  valueNone("None"),
  valueLogisticRegression("LogisticRegression"),
  valueLogisticRegressionCV("LogisticRegressionCV"),
  valueLightGBMClassifier("LightGBMClassifier"),
  valueElasticNet("ElasticNet"),
  valueElasticNetCV("ElasticNetCV"),
  valueLightGBMRegressor("LightGBMRegressor"),
  valueLinearRegression("LinearRegression");

  const StackMetaLearnerType(this.value);
  final String value;

  static StackMetaLearnerType fromValue(String value) {
    for (final item in StackMetaLearnerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StackMetaLearnerType value: $value');
  }
}

