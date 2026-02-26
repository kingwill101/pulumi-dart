enum CVSSv3AvailabilityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3AvailabilityImpact2(this.value);
  final String value;

  static CVSSv3AvailabilityImpact2 fromValue(String value) {
    for (final item in CVSSv3AvailabilityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3AvailabilityImpact2 value: $value');
  }
}
