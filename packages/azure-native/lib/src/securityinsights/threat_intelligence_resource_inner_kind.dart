/// The kind of the entity.
enum ThreatIntelligenceResourceInnerKind {
  valueIndicator("indicator");

  const ThreatIntelligenceResourceInnerKind(this.value);
  final String value;

  static ThreatIntelligenceResourceInnerKind fromValue(String value) {
    for (final item in ThreatIntelligenceResourceInnerKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThreatIntelligenceResourceInnerKind value: $value');
  }
}

