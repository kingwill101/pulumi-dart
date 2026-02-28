enum CVSSv3IntegrityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3IntegrityImpact(this.value);
  final String value;

  static CVSSv3IntegrityImpact fromValue(String value) {
    for (final item in CVSSv3IntegrityImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3IntegrityImpact value: $value');
  }
}
