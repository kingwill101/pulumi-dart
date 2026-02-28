/// Sole Tenancy nodes maintenance policy.
enum SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1 {
  hostMaintenancePolicyUnspecified("HOST_MAINTENANCE_POLICY_UNSPECIFIED"),
  hostMaintenancePolicyDefault("HOST_MAINTENANCE_POLICY_DEFAULT"),
  hostMaintenancePolicyRestartInPlace("HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE"),
  hostMaintenancePolicyMigrateWithinNodeGroup("HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP");

  const SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1(this.value);
  final String value;

  static SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoleTenancyPreferencesHostMaintenancePolicyMigrationcenterV1alpha1 value: $value');
  }
}

