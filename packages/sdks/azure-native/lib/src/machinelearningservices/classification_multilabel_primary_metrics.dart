/// Primary metric to optimize for this task.
enum ClassificationMultilabelPrimaryMetrics {
  valueAUCWeighted("AUCWeighted"),
  valueAccuracy("Accuracy"),
  valueNormMacroRecall("NormMacroRecall"),
  valueAveragePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  valuePrecisionScoreWeighted("PrecisionScoreWeighted"),
  valueIOU("IOU");

  const ClassificationMultilabelPrimaryMetrics(this.wireValue);
  final String wireValue;

  static ClassificationMultilabelPrimaryMetrics fromValue(String value) {
    for (final item in ClassificationMultilabelPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClassificationMultilabelPrimaryMetrics value: $value',
    );
  }
}
