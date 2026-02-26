// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_access_config_response.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response2.dart';

/// Result data returned by getRuntime.
class GetRuntimeResult {
  /// The config settings for accessing runtime.
  final RuntimeAccessConfigResponse accessConfig;

  /// Runtime creation time.
  final String createTime;

  /// Runtime health_state.
  final String healthState;

  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;

  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  final RuntimeMetricsResponse metrics;

  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  final bool migrated;

  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  final String name;

  /// Checks how feasible a migration from GmN to WbI is.
  final RuntimeMigrationEligibilityResponse runtimeMigrationEligibility;

  /// The config settings for software inside the runtime.
  final RuntimeSoftwareConfigResponse softwareConfig;

  /// Runtime state.
  final String state;

  /// Runtime update time.
  final String updateTime;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  final VirtualMachineResponse2 virtualMachine;

  GetRuntimeResult({
    required this.accessConfig,
    required this.createTime,
    required this.healthState,
    required this.labels,
    required this.metrics,
    required this.migrated,
    required this.name,
    required this.runtimeMigrationEligibility,
    required this.softwareConfig,
    required this.state,
    required this.updateTime,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfig'] = accessConfig.toMap();
    map['createTime'] = createTime;
    map['healthState'] = healthState;
    map['labels'] = labels;
    map['metrics'] = metrics.toMap();
    map['migrated'] = migrated;
    map['name'] = name;
    map['runtimeMigrationEligibility'] = runtimeMigrationEligibility.toMap();
    map['softwareConfig'] = softwareConfig.toMap();
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['virtualMachine'] = virtualMachine.toMap();
    return map;
  }

  factory GetRuntimeResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeResult(
      accessConfig: RuntimeAccessConfigResponse.fromMap(
          (map['accessConfig'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      healthState: map['healthState'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: RuntimeMetricsResponse.fromMap(
          (map['metrics'] as Map).cast<String, dynamic>()),
      migrated: map['migrated'] as bool,
      name: map['name'] as String,
      runtimeMigrationEligibility: RuntimeMigrationEligibilityResponse.fromMap(
          (map['runtimeMigrationEligibility'] as Map).cast<String, dynamic>()),
      softwareConfig: RuntimeSoftwareConfigResponse.fromMap(
          (map['softwareConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      virtualMachine: VirtualMachineResponse2.fromMap(
          (map['virtualMachine'] as Map).cast<String, dynamic>()),
    );
  }
}
