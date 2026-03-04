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
