import 'package:pulumi/pulumi.dart' as pulumi;

/// Assessment type of the assessment.
enum AssessmentType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueMachineAssessment("MachineAssessment"),
  valueAvsAssessment("AvsAssessment"),
  valueSqlAssessment("SqlAssessment"),
  valueWebAppAssessment("WebAppAssessment");

  const AssessmentType(this.wireValue);
  @override
  final String wireValue;

  static AssessmentType fromValue(String value) {
    for (final item in AssessmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentType value: $value');
  }
}
