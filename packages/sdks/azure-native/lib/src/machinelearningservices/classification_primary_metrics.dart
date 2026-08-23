/// Primary metrics for classification tasks.
enum ClassificationPrimaryMetrics {
  aUCWeighted("AUCWeighted"),
  accuracy("Accuracy"),
  normMacroRecall("NormMacroRecall"),
  averagePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  precisionScoreWeighted("PrecisionScoreWeighted");

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
