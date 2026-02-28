enum CVSSv3AvailabilityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3AvailabilityImpact(this.value);
  final String value;

  static CVSSv3AvailabilityImpact fromValue(String value) {
    for (final item in CVSSv3AvailabilityImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3AvailabilityImpact value: $value');
  }
}
