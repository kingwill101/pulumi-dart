/// Specifies the assessment mode.
enum AssessmentModeTypes {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform");

  const AssessmentModeTypes(this.value);
  final String value;

  static AssessmentModeTypes fromValue(String value) {
    for (final item in AssessmentModeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentModeTypes value: $value');
  }
}

