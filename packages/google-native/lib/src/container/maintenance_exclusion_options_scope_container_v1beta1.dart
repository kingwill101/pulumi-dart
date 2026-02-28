/// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
enum MaintenanceExclusionOptionsScopeContainerV1beta1 {
  noUpgrades("NO_UPGRADES"),
  noMinorUpgrades("NO_MINOR_UPGRADES"),
  noMinorOrNodeUpgrades("NO_MINOR_OR_NODE_UPGRADES");

  const MaintenanceExclusionOptionsScopeContainerV1beta1(this.value);
  final String value;

  static MaintenanceExclusionOptionsScopeContainerV1beta1 fromValue(String value) {
    for (final item in MaintenanceExclusionOptionsScopeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceExclusionOptionsScopeContainerV1beta1 value: $value');
  }
}

