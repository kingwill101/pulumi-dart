/// Property generatedRulesType
enum RulesSourceListGeneratedRulesType {
  aLLOWLIST("ALLOWLIST"),
  dENYLIST("DENYLIST");

  const RulesSourceListGeneratedRulesType(this.wireValue);
  final String wireValue;

  static RulesSourceListGeneratedRulesType fromValue(String value) {
    for (final item in RulesSourceListGeneratedRulesType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RulesSourceListGeneratedRulesType value: $value',
    );
  }
}
