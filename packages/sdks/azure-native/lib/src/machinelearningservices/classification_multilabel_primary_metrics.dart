/// Primary metrics for classification multilabel tasks.
enum ClassificationMultilabelPrimaryMetrics {
  aUCWeighted("AUCWeighted"),
  accuracy("Accuracy"),
  normMacroRecall("NormMacroRecall"),
  averagePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  precisionScoreWeighted("PrecisionScoreWeighted"),
  iOU("IOU");

  const ClassificationMultilabelPrimaryMetrics(this.wireValue);
  final String wireValue;

  static ClassificationMultilabelPrimaryMetrics fromValue(String value) {
    for (final item in ClassificationMultilabelPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationMultilabelPrimaryMetrics value: $value');
  }
}
