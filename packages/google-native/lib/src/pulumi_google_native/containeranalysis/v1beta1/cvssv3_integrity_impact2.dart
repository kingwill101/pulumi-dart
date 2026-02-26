enum CVSSv3IntegrityImpact2 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3IntegrityImpact2(this.value);
  final String value;

  static CVSSv3IntegrityImpact2 fromValue(String value) {
    for (final item in CVSSv3IntegrityImpact2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3IntegrityImpact2 value: $value');
  }
}
