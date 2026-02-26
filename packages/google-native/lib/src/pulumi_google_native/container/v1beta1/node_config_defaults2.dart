// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config2.dart';
import 'host_maintenance_policy.dart';
import 'node_pool_logging_config2.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults2 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfig2? gcfsConfig;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicy? hostMaintenancePolicy;

  /// Logging configuration for node pools.
  final NodePoolLoggingConfig2? loggingConfig;

  NodeConfigDefaults2({
    this.gcfsConfig,
    this.hostMaintenancePolicy,
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcfsConfigValue = gcfsConfig;
    if (gcfsConfigValue != null) {
      map['gcfsConfig'] = gcfsConfigValue.toMap();
    }
    final hostMaintenancePolicyValue = hostMaintenancePolicy;
    if (hostMaintenancePolicyValue != null) {
      map['hostMaintenancePolicy'] = hostMaintenancePolicyValue.toMap();
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    return map;
  }

  factory NodeConfigDefaults2.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaults2(
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : GcfsConfig2.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : HostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : NodePoolLoggingConfig2.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
