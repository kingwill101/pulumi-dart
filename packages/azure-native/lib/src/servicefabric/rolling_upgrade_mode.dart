/// The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
enum RollingUpgradeMode {
  valueMonitored("Monitored"),
  valueUnmonitoredAuto("UnmonitoredAuto");

  const RollingUpgradeMode(this.value);
  final String value;

  static RollingUpgradeMode fromValue(String value) {
    for (final item in RollingUpgradeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RollingUpgradeMode value: $value');
  }
}

