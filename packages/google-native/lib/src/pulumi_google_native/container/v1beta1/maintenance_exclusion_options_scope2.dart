/// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
enum MaintenanceExclusionOptionsScope2 {
  noUpgrades("NO_UPGRADES"),
  noMinorUpgrades("NO_MINOR_UPGRADES"),
  noMinorOrNodeUpgrades("NO_MINOR_OR_NODE_UPGRADES");

  const MaintenanceExclusionOptionsScope2(this.value);
  final String value;

  static MaintenanceExclusionOptionsScope2 fromValue(String value) {
    for (final item in MaintenanceExclusionOptionsScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MaintenanceExclusionOptionsScope2 value: $value');
  }
}
