// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'duration3.dart';
import 'scheduling_instance_termination_action3.dart';
import 'scheduling_node_affinity3.dart';
import 'scheduling_on_host_maintenance3.dart';
import 'scheduling_provisioning_model3.dart';

/// Sets the scheduling options for an Instance.
class Scheduling3 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool? automaticRestart;

  /// Specifies the termination action for the instance.
  final SchedulingInstanceTerminationAction3? instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final Duration3? localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinity3>? nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final SchedulingOnHostMaintenance3? onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool? preemptible;

  /// Specifies the provisioning model of the instance.
  final SchedulingProvisioningModel3? provisioningModel;

  Scheduling3({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.locationHint,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticRestartValue = automaticRestart;
    if (automaticRestartValue != null) {
      map['automaticRestart'] = automaticRestartValue;
    }
    final instanceTerminationActionValue = instanceTerminationAction;
    if (instanceTerminationActionValue != null) {
      map['instanceTerminationAction'] = instanceTerminationActionValue.value;
    }
    final localSsdRecoveryTimeoutValue = localSsdRecoveryTimeout;
    if (localSsdRecoveryTimeoutValue != null) {
      map['localSsdRecoveryTimeout'] = localSsdRecoveryTimeoutValue.toMap();
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final minNodeCpusValue = minNodeCpus;
    if (minNodeCpusValue != null) {
      map['minNodeCpus'] = minNodeCpusValue;
    }
    final nodeAffinitiesValue = nodeAffinities;
    if (nodeAffinitiesValue != null) {
      map['nodeAffinities'] =
          Input.encodeList<SchedulingNodeAffinity3, Map<String, dynamic>>(
              nodeAffinitiesValue, (value) => value.toMap());
    }
    final onHostMaintenanceValue = onHostMaintenance;
    if (onHostMaintenanceValue != null) {
      map['onHostMaintenance'] = onHostMaintenanceValue.value;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final provisioningModelValue = provisioningModel;
    if (provisioningModelValue != null) {
      map['provisioningModel'] = provisioningModelValue.value;
    }
    return map;
  }

  factory Scheduling3.fromMap(Map<String, dynamic> map) {
    return Scheduling3(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : SchedulingInstanceTerminationAction3.fromValue(
              map['instanceTerminationAction'] as String),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : Duration3.fromMap(
              (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<SchedulingNodeAffinity3>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinity3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : SchedulingOnHostMaintenance3.fromValue(
              map['onHostMaintenance'] as String),
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : SchedulingProvisioningModel3.fromValue(
              map['provisioningModel'] as String),
    );
  }
}
