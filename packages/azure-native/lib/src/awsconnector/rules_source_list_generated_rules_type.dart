/// Property generatedRulesType
enum RulesSourceListGeneratedRulesType {
  aLLOWLIST("ALLOWLIST"),
  dENYLIST("DENYLIST");

  const RulesSourceListGeneratedRulesType(this.value);
  final String value;

  static RulesSourceListGeneratedRulesType fromValue(String value) {
    for (final item in RulesSourceListGeneratedRulesType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesSourceListGeneratedRulesType value: $value');
  }
}

