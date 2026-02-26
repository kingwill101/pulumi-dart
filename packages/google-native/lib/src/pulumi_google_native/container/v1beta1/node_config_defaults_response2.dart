// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config_response2.dart';
import 'host_maintenance_policy_response.dart';
import 'node_pool_logging_config_response2.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponse2 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfigResponse2 gcfsConfig;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicyResponse hostMaintenancePolicy;

  /// Logging configuration for node pools.
  final NodePoolLoggingConfigResponse2 loggingConfig;

  NodeConfigDefaultsResponse2({
    required this.gcfsConfig,
    required this.hostMaintenancePolicy,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcfsConfig'] = gcfsConfig.toMap();
    map['hostMaintenancePolicy'] = hostMaintenancePolicy.toMap();
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory NodeConfigDefaultsResponse2.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponse2(
      gcfsConfig: GcfsConfigResponse2.fromMap(
          (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: HostMaintenancePolicyResponse.fromMap(
          (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      loggingConfig: NodePoolLoggingConfigResponse2.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
