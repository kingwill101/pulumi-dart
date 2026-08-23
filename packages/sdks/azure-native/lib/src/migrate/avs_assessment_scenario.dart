/// AVS Assessment Scenario.
enum AvsAssessmentScenario {
  unknown("Unknown"),
  newAvsSddc("NewAvsSddc"),
  avsSddcExpansion("AvsSddcExpansion");

  const AvsAssessmentScenario(this.wireValue);
  final String wireValue;

  static AvsAssessmentScenario fromValue(String value) {
    for (final item in AvsAssessmentScenario.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvsAssessmentScenario value: $value');
  }
}
