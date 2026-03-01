/// The type of enablement rule
enum EnablementRules {
  valueMultiFactorAuthentication("MultiFactorAuthentication"),
  valueJustification("Justification"),
  valueTicketing("Ticketing");

  const EnablementRules(this.value);
  final String value;

  static EnablementRules fromValue(String value) {
    for (final item in EnablementRules.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementRules value: $value');
  }
}

