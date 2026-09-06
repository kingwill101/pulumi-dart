import 'package:pulumi/pulumi.dart' as pulumi;

/// Assessment sizing criterion.
enum AssessmentSizingCriterion implements pulumi.PulumiEnum<String> {
  performanceBased("PerformanceBased"),
  asOnPremises("AsOnPremises");

  const AssessmentSizingCriterion(this.wireValue);
  @override
  final String wireValue;

  static AssessmentSizingCriterion fromValue(String value) {
    for (final item in AssessmentSizingCriterion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentSizingCriterion value: $value');
  }
}
