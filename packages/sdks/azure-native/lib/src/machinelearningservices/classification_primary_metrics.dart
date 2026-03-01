/// Primary metric for Text-Classification task.
enum ClassificationPrimaryMetrics {
  valueAUCWeighted("AUCWeighted"),
  valueAccuracy("Accuracy"),
  valueNormMacroRecall("NormMacroRecall"),
  valueAveragePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  valuePrecisionScoreWeighted("PrecisionScoreWeighted");

  const ClassificationPrimaryMetrics(this.value);
  final String value;

  static ClassificationPrimaryMetrics fromValue(String value) {
    for (final item in ClassificationPrimaryMetrics.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationPrimaryMetrics value: $value');
  }
}

