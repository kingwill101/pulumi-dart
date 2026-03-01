/// Controls the compute job tier
enum JobTier {
  valueNull("Null"),
  valueSpot("Spot"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const JobTier(this.value);
  final String value;

  static JobTier fromValue(String value) {
    for (final item in JobTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTier value: $value');
  }
}

