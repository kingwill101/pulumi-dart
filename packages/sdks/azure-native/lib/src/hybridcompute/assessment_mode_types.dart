import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the assessment mode.
enum AssessmentModeTypes implements pulumi.PulumiEnum<String> {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform");

  const AssessmentModeTypes(this.wireValue);
  @override
  final String wireValue;

  static AssessmentModeTypes fromValue(String value) {
    for (final item in AssessmentModeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentModeTypes value: $value');
  }
}
