/// Enum for all classification models supported by AutoML.
enum ClassificationModels {
  logisticRegression("LogisticRegression"),
  sGD("SGD"),
  multinomialNaiveBayes("MultinomialNaiveBayes"),
  bernoulliNaiveBayes("BernoulliNaiveBayes"),
  sVM("SVM"),
  linearSVM("LinearSVM"),
  kNN("KNN"),
  decisionTree("DecisionTree"),
  randomForest("RandomForest"),
  extremeRandomTrees("ExtremeRandomTrees"),
  lightGBM("LightGBM"),
  gradientBoosting("GradientBoosting"),
  xGBoostClassifier("XGBoostClassifier");

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
