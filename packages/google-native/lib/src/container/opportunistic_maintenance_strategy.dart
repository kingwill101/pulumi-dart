// ignore_for_file: unused_element, unnecessary_cast

/// Strategy that will trigger maintenance on behalf of the customer.
class OpportunisticMaintenanceStrategy {
  /// The window of time that opportunistic maintenance can run. Example: A setting of 14 days implies that opportunistic maintenance can only be ran in the 2 weeks leading up to the scheduled maintenance date. Setting 28 days allows opportunistic maintenance to run at any time in the scheduled maintenance window (all `PERIODIC` maintenance is set 28 days in advance).
  final String? maintenanceAvailabilityWindow;

  /// The minimum nodes required to be available in a pool. Blocks maintenance if it would cause the number of running nodes to dip below this value.
  final String? minNodesPerPool;

  /// The amount of time that a node can remain idle (no customer owned workloads running), before triggering maintenance.
  final String? nodeIdleTimeWindow;

  /// Creates a new [OpportunisticMaintenanceStrategy].
  /// [maintenanceAvailabilityWindow] The window of time that opportunistic maintenance can run. Example: A setting of 14 days implies that opportunistic maintenance can only be ran in the 2 weeks leading up to the scheduled maintenance date. Setting 28 days allows opportunistic maintenance to run at any time in the scheduled maintenance window (all `PERIODIC` maintenance is set 28 days in advance).
  /// [minNodesPerPool] The minimum nodes required to be available in a pool. Blocks maintenance if it would cause the number of running nodes to dip below this value.
  /// [nodeIdleTimeWindow] The amount of time that a node can remain idle (no customer owned workloads running), before triggering maintenance.
  OpportunisticMaintenanceStrategy({
    this.maintenanceAvailabilityWindow,
    this.minNodesPerPool,
    this.nodeIdleTimeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceAvailabilityWindow': ?maintenanceAvailabilityWindow,
      'minNodesPerPool': ?minNodesPerPool,
      'nodeIdleTimeWindow': ?nodeIdleTimeWindow,
    };
  }

  factory OpportunisticMaintenanceStrategy.fromMap(Map<String, dynamic> map) {
    return OpportunisticMaintenanceStrategy(
      maintenanceAvailabilityWindow:
          map['maintenanceAvailabilityWindow'] == null
          ? null
          : map['maintenanceAvailabilityWindow'] as String,
      minNodesPerPool: map['minNodesPerPool'] == null
          ? null
          : map['minNodesPerPool'] as String,
      nodeIdleTimeWindow: map['nodeIdleTimeWindow'] == null
          ? null
          : map['nodeIdleTimeWindow'] as String,
    );
  }
}
