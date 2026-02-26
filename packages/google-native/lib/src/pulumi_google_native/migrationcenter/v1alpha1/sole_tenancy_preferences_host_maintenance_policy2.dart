/// Sole Tenancy nodes maintenance policy.
enum SoleTenancyPreferencesHostMaintenancePolicy2 {
  hostMaintenancePolicyUnspecified("HOST_MAINTENANCE_POLICY_UNSPECIFIED"),
  hostMaintenancePolicyDefault("HOST_MAINTENANCE_POLICY_DEFAULT"),
  hostMaintenancePolicyRestartInPlace(
      "HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE"),
  hostMaintenancePolicyMigrateWithinNodeGroup(
      "HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP");

  const SoleTenancyPreferencesHostMaintenancePolicy2(this.value);
  final String value;

  static SoleTenancyPreferencesHostMaintenancePolicy2 fromValue(String value) {
    for (final item in SoleTenancyPreferencesHostMaintenancePolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoleTenancyPreferencesHostMaintenancePolicy2 value: $value');
  }
}
