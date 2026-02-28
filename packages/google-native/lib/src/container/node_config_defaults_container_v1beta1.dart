// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'node_pool_logging_config_container_v1beta1.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsContainerV1beta1 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfigContainerV1beta1? gcfsConfig;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicy? hostMaintenancePolicy;

  /// Logging configuration for node pools.
  final NodePoolLoggingConfigContainerV1beta1? loggingConfig;

  /// Creates a new [NodeConfigDefaultsContainerV1beta1].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [hostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [loggingConfig] Logging configuration for node pools.
  NodeConfigDefaultsContainerV1beta1({
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

  factory NodeConfigDefaultsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsContainerV1beta1(
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : GcfsConfigContainerV1beta1.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : HostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : NodePoolLoggingConfigContainerV1beta1.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
