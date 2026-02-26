/// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
enum NodeGroupMaintenancePolicy3 {
  default_("DEFAULT"),
  maintenancePolicyUnspecified("MAINTENANCE_POLICY_UNSPECIFIED"),
  migrateWithinNodeGroup("MIGRATE_WITHIN_NODE_GROUP"),
  restartInPlace("RESTART_IN_PLACE");

  const NodeGroupMaintenancePolicy3(this.value);
  final String value;

  static NodeGroupMaintenancePolicy3 fromValue(String value) {
    for (final item in NodeGroupMaintenancePolicy3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenancePolicy3 value: $value');
  }
}
