import 'package:pulumi/pulumi.dart' as pulumi;

/// AVS Assessment Scenario.
enum AvsAssessmentScenario implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  newAvsSddc("NewAvsSddc"),
  avsSddcExpansion("AvsSddcExpansion");

  const AvsAssessmentScenario(this.wireValue);
  @override
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
