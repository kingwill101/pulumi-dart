/// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
enum MaintenanceExclusionOptionsScope {
  noUpgrades("NO_UPGRADES"),
  noMinorUpgrades("NO_MINOR_UPGRADES"),
  noMinorOrNodeUpgrades("NO_MINOR_OR_NODE_UPGRADES");

  const MaintenanceExclusionOptionsScope(this.value);
  final String value;

  static MaintenanceExclusionOptionsScope fromValue(String value) {
    for (final item in MaintenanceExclusionOptionsScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MaintenanceExclusionOptionsScope value: $value');
  }
}
