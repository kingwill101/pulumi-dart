// ignore_for_file: unused_element, unnecessary_cast

import 'host_maintenance_policy_maintenance_interval.dart';
import 'opportunistic_maintenance_strategy.dart';

/// HostMaintenancePolicy contains the maintenance policy for the hosts on which the GKE VMs run on.
class HostMaintenancePolicy {
  /// Specifies the frequency of planned maintenance events.
  final HostMaintenancePolicyMaintenanceInterval? maintenanceInterval;

  /// Strategy that will trigger maintenance on behalf of the customer.
  final OpportunisticMaintenanceStrategy? opportunisticMaintenanceStrategy;

  HostMaintenancePolicy({
    this.maintenanceInterval,
    this.opportunisticMaintenanceStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue.value;
    }
    final opportunisticMaintenanceStrategyValue =
        opportunisticMaintenanceStrategy;
    if (opportunisticMaintenanceStrategyValue != null) {
      map['opportunisticMaintenanceStrategy'] =
          opportunisticMaintenanceStrategyValue.toMap();
    }
    return map;
  }

  factory HostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return HostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : HostMaintenancePolicyMaintenanceInterval.fromValue(
              map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategy:
          map['opportunisticMaintenanceStrategy'] == null
              ? null
              : OpportunisticMaintenanceStrategy.fromMap(
                  (map['opportunisticMaintenanceStrategy'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
