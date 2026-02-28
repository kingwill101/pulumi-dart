// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_scheduling_local_ssd_recovery_timeout.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling_max_run_duration.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling_node_affinity.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesScheduling {
  /// (Optional)
  final bool? automaticRestart;

  /// Possible values are: `INSTANCE_TERMINATION_ACTION_UNSPECIFIED`, `DELETE`, `STOP`.
  final String? instanceTerminationAction;

  /// A nested object resource.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout?
      localSsdRecoveryTimeout;

  /// A nested object resource.
  /// Structure is documented below.
  final RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration?
      maxRunDuration;

  /// (Optional)
  final int? minNodeCpus;

  /// Structure is documented below.
  final List<
          RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity>?
      nodeAffinities;

  /// Possible values are: `ON_HOST_MAINTENANCE_UNSPECIFIED`, `TERMINATE`, `MIGRATE`.
  final String? onHostMaintenance;

  /// (Optional)
  final bool? preemptible;

  /// Possible values are: `PROVISIONING_MODEL_UNSPECIFIED`, `STANDARD`, `SPOT`.
  final String? provisioningModel;

  /// (Optional)
  final String? terminationTime;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesScheduling].
  /// [automaticRestart] (Optional)
  /// [instanceTerminationAction] Possible values are: `INSTANCE_TERMINATION_ACTION_UNSPECIFIED`, `DELETE`, `STOP`.
  /// [localSsdRecoveryTimeout] A nested object resource.
  /// [maxRunDuration] A nested object resource.
  /// [minNodeCpus] (Optional)
  /// [nodeAffinities] Structure is documented below.
  /// [onHostMaintenance] Possible values are: `ON_HOST_MAINTENANCE_UNSPECIFIED`, `TERMINATE`, `MIGRATE`.
  /// [preemptible] (Optional)
  /// [provisioningModel] Possible values are: `PROVISIONING_MODEL_UNSPECIFIED`, `STANDARD`, `SPOT`.
  /// [terminationTime] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesScheduling({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.maxRunDuration,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
    this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticRestartValue = automaticRestart;
    if (automaticRestartValue != null) {
      map['automaticRestart'] = automaticRestartValue;
    }
    final instanceTerminationActionValue = instanceTerminationAction;
    if (instanceTerminationActionValue != null) {
      map['instanceTerminationAction'] = instanceTerminationActionValue;
    }
    final localSsdRecoveryTimeoutValue = localSsdRecoveryTimeout;
    if (localSsdRecoveryTimeoutValue != null) {
      map['localSsdRecoveryTimeout'] = localSsdRecoveryTimeoutValue.toMap();
    }
    final maxRunDurationValue = maxRunDuration;
    if (maxRunDurationValue != null) {
      map['maxRunDuration'] = maxRunDurationValue.toMap();
    }
    final minNodeCpusValue = minNodeCpus;
    if (minNodeCpusValue != null) {
      map['minNodeCpus'] = minNodeCpusValue;
    }
    final nodeAffinitiesValue = nodeAffinities;
    if (nodeAffinitiesValue != null) {
      map['nodeAffinities'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity,
          Map<String, dynamic>>(nodeAffinitiesValue, (value) => value.toMap());
    }
    final onHostMaintenanceValue = onHostMaintenance;
    if (onHostMaintenanceValue != null) {
      map['onHostMaintenance'] = onHostMaintenanceValue;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final provisioningModelValue = provisioningModel;
    if (provisioningModelValue != null) {
      map['provisioningModel'] = provisioningModelValue;
    }
    final terminationTimeValue = terminationTime;
    if (terminationTimeValue != null) {
      map['terminationTime'] = terminationTimeValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesScheduling.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesScheduling(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout
              .fromMap((map['localSsdRecoveryTimeout'] as Map)
                  .cast<String, dynamic>()),
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration
              .fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity
                      .fromMap((value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : map['onHostMaintenance'] as String,
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : map['provisioningModel'] as String,
      terminationTime: map['terminationTime'] == null
          ? null
          : map['terminationTime'] as String,
    );
  }
}
