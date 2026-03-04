/// Controls the compute job tier
enum JobTier {
  valueNull("Null"),
  valueSpot("Spot"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const JobTier(this.wireValue);
  final String wireValue;

  static JobTier fromValue(String value) {
    for (final item in JobTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTier value: $value');
  }
}
