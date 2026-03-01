enum CVSSAvailabilityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSAvailabilityImpact(this.value);
  final String value;

  static CVSSAvailabilityImpact fromValue(String value) {
    for (final item in CVSSAvailabilityImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAvailabilityImpact value: $value');
  }
}
