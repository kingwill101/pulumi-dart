/// Primary metric for Text-Classification task.
enum ClassificationPrimaryMetrics {
  valueAUCWeighted("AUCWeighted"),
  valueAccuracy("Accuracy"),
  valueNormMacroRecall("NormMacroRecall"),
  valueAveragePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  valuePrecisionScoreWeighted("PrecisionScoreWeighted");

  const ClassificationPrimaryMetrics(this.wireValue);
  final String wireValue;

  static ClassificationPrimaryMetrics fromValue(String value) {
    for (final item in ClassificationPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationPrimaryMetrics value: $value');
  }
}
