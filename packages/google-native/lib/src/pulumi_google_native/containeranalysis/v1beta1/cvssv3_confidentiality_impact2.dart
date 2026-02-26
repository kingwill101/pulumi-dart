enum CVSSv3ConfidentialityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3ConfidentialityImpact2(this.value);
  final String value;

  static CVSSv3ConfidentialityImpact2 fromValue(String value) {
    for (final item in CVSSv3ConfidentialityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3ConfidentialityImpact2 value: $value');
  }
}
