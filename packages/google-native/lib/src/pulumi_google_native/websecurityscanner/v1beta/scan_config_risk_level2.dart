/// The risk level selected for the scan
enum ScanConfigRiskLevel2 {
  riskLevelUnspecified("RISK_LEVEL_UNSPECIFIED"),
  normal("NORMAL"),
  low("LOW");

  const ScanConfigRiskLevel2(this.value);
  final String value;

  static ScanConfigRiskLevel2 fromValue(String value) {
    for (final item in ScanConfigRiskLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigRiskLevel2 value: $value');
  }
}
