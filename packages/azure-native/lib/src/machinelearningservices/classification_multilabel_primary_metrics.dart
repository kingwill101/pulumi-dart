/// Primary metric to optimize for this task.
enum ClassificationMultilabelPrimaryMetrics {
  valueAUCWeighted("AUCWeighted"),
  valueAccuracy("Accuracy"),
  valueNormMacroRecall("NormMacroRecall"),
  valueAveragePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  valuePrecisionScoreWeighted("PrecisionScoreWeighted"),
  valueIOU("IOU");

  const ClassificationMultilabelPrimaryMetrics(this.value);
  final String value;

  static ClassificationMultilabelPrimaryMetrics fromValue(String value) {
    for (final item in ClassificationMultilabelPrimaryMetrics.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassificationMultilabelPrimaryMetrics value: $value');
  }
}

