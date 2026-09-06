import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for classification tasks.
enum ClassificationPrimaryMetrics implements pulumi.PulumiEnum<String> {
  aUCWeighted("AUCWeighted"),
  accuracy("Accuracy"),
  normMacroRecall("NormMacroRecall"),
  averagePrecisionScoreWeighted("AveragePrecisionScoreWeighted"),
  precisionScoreWeighted("PrecisionScoreWeighted");

  const ClassificationPrimaryMetrics(this.wireValue);
  @override
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
