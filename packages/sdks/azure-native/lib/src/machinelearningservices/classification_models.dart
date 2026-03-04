/// Enum for all classification models supported by AutoML.
enum ClassificationModels {
  valueLogisticRegression("LogisticRegression"),
  valueSGD("SGD"),
  valueMultinomialNaiveBayes("MultinomialNaiveBayes"),
  valueBernoulliNaiveBayes("BernoulliNaiveBayes"),
  valueSVM("SVM"),
  valueLinearSVM("LinearSVM"),
  valueKNN("KNN"),
  valueDecisionTree("DecisionTree"),
  valueRandomForest("RandomForest"),
  valueExtremeRandomTrees("ExtremeRandomTrees"),
  valueLightGBM("LightGBM"),
  valueGradientBoosting("GradientBoosting"),
  valueXGBoostClassifier("XGBoostClassifier");

  const ClassificationModels(this.wireValue);
  final String wireValue;

  static ClassificationModels fromValue(String value) {
    for (final item in ClassificationModels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationModels value: $value');
  }
}
