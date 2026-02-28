// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config_response_container_v1beta1.dart';
import 'host_maintenance_policy_response.dart';
import 'node_pool_logging_config_response_container_v1beta1.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponseContainerV1beta1 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfigResponseContainerV1beta1 gcfsConfig;
  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicyResponse hostMaintenancePolicy;
  /// Logging configuration for node pools.
  final NodePoolLoggingConfigResponseContainerV1beta1 loggingConfig;

  /// Creates a new [NodeConfigDefaultsResponseContainerV1beta1].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [hostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [loggingConfig] Logging configuration for node pools.
  NodeConfigDefaultsResponseContainerV1beta1({
    required this.gcfsConfig,
    required this.hostMaintenancePolicy,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': gcfsConfig.toMap(),
      'hostMaintenancePolicy': hostMaintenancePolicy.toMap(),
      'loggingConfig': loggingConfig.toMap(),
    };
  }

  factory NodeConfigDefaultsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponseContainerV1beta1(
      gcfsConfig: GcfsConfigResponseContainerV1beta1.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: HostMaintenancePolicyResponse.fromMap((map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      loggingConfig: NodePoolLoggingConfigResponseContainerV1beta1.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

