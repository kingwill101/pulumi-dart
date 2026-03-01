/// AVS Assessment Scenario.
enum AvsAssessmentScenario {
  unknown("Unknown"),
  newAvsSddc("NewAvsSddc"),
  avsSddcExpansion("AvsSddcExpansion");

  const AvsAssessmentScenario(this.value);
  final String value;

  static AvsAssessmentScenario fromValue(String value) {
    for (final item in AvsAssessmentScenario.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvsAssessmentScenario value: $value');
  }
}

