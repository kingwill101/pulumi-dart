/// The type of enablement rule
enum EnablementRules {
  valueMultiFactorAuthentication("MultiFactorAuthentication"),
  valueJustification("Justification"),
  valueTicketing("Ticketing");

  const EnablementRules(this.wireValue);
  final String wireValue;

  static EnablementRules fromValue(String value) {
    for (final item in EnablementRules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementRules value: $value');
  }
}

