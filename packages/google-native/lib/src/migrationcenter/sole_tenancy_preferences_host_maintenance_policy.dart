/// Sole Tenancy nodes maintenance policy.
enum SoleTenancyPreferencesHostMaintenancePolicy {
  hostMaintenancePolicyUnspecified("HOST_MAINTENANCE_POLICY_UNSPECIFIED"),
  hostMaintenancePolicyDefault("HOST_MAINTENANCE_POLICY_DEFAULT"),
  hostMaintenancePolicyRestartInPlace(
      "HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE"),
  hostMaintenancePolicyMigrateWithinNodeGroup(
      "HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP");

  const SoleTenancyPreferencesHostMaintenancePolicy(this.value);
  final String value;

  static SoleTenancyPreferencesHostMaintenancePolicy fromValue(String value) {
    for (final item in SoleTenancyPreferencesHostMaintenancePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoleTenancyPreferencesHostMaintenancePolicy value: $value');
  }
}
