import 'package:pulumi/pulumi.dart' as pulumi;

/// User configurable setting that describes the status of the assessment.
enum AssessmentStage implements pulumi.PulumiEnum<String> {
  valueInProgress("InProgress"),
  valueUnderReview("UnderReview"),
  valueApproved("Approved");

  const AssessmentStage(this.wireValue);
  @override
  final String wireValue;

  static AssessmentStage fromValue(String value) {
    for (final item in AssessmentStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentStage value: $value');
  }
}
