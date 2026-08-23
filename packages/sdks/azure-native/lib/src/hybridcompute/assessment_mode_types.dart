/// Specifies the assessment mode.
enum AssessmentModeTypes {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform");

  const AssessmentModeTypes(this.wireValue);
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
