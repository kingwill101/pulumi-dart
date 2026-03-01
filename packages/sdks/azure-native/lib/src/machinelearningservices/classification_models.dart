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

  const ClassificationModels(this.value);
  final String value;

  static ClassificationModels fromValue(String value) {
    for (final item in ClassificationModels.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationModels value: $value');
  }
}

