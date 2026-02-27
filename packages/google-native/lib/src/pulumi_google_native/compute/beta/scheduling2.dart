// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'duration2.dart';
import 'scheduling_instance_termination_action2.dart';
import 'scheduling_maintenance_interval2.dart';
import 'scheduling_node_affinity2.dart';
import 'scheduling_on_host_maintenance2.dart';
import 'scheduling_provisioning_model2.dart';

/// Sets the scheduling options for an Instance.
class Scheduling2 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool? automaticRestart;

  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;

  /// Specifies the termination action for the instance.
  final SchedulingInstanceTerminationAction2? instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final Duration2? localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final SchedulingMaintenanceInterval2? maintenanceInterval;

  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final Duration2? maxRunDuration;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinity2>? nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final SchedulingOnHostMaintenance2? onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool? preemptible;

  /// Specifies the provisioning model of the instance.
  final SchedulingProvisioningModel2? provisioningModel;

  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String? terminationTime;

  Scheduling2({
    this.automaticRestart,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.locationHint,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
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
    final hostErrorTimeoutSecondsValue = hostErrorTimeoutSeconds;
    if (hostErrorTimeoutSecondsValue != null) {
      map['hostErrorTimeoutSeconds'] = hostErrorTimeoutSecondsValue;
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
    final maintenanceFreezeDurationHoursValue = maintenanceFreezeDurationHours;
    if (maintenanceFreezeDurationHoursValue != null) {
      map['maintenanceFreezeDurationHours'] =
          maintenanceFreezeDurationHoursValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue.value;
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
      map['nodeAffinities'] =
          Input.encodeList<SchedulingNodeAffinity2, Map<String, dynamic>>(
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
    final terminationTimeValue = terminationTime;
    if (terminationTimeValue != null) {
      map['terminationTime'] = terminationTimeValue;
    }
    return map;
  }

  factory Scheduling2.fromMap(Map<String, dynamic> map) {
    return Scheduling2(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null
          ? null
          : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : SchedulingInstanceTerminationAction2.fromValue(
              map['instanceTerminationAction'] as String),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : Duration2.fromMap(
              (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] == null
              ? null
              : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : SchedulingMaintenanceInterval2.fromValue(
              map['maintenanceInterval'] as String),
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : Duration2.fromMap(
              (map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<SchedulingNodeAffinity2>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinity2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : SchedulingOnHostMaintenance2.fromValue(
              map['onHostMaintenance'] as String),
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : SchedulingProvisioningModel2.fromValue(
              map['provisioningModel'] as String),
      terminationTime: map['terminationTime'] == null
          ? null
          : map['terminationTime'] as String,
    );
  }
}
