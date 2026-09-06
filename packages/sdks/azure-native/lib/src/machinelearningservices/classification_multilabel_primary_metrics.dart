import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for classification multilabel tasks.
enum ClassificationMultilabelPrimaryMetrics implements pulumi.PulumiEnum<String> {
  aUCWeighted("AUCWeighted"),
  accuracy("Accuracy"),
  normMacroRecall("NormMacroRecall"),
  averagePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  precisionScoreWeighted("PrecisionScoreWeighted"),
  iOU("IOU");

  const ClassificationMultilabelPrimaryMetrics(this.wireValue);
  @override
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
