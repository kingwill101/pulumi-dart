// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'duration.dart';
import 'scheduling_graceful_shutdown.dart';
import 'scheduling_instance_termination_action.dart';
import 'scheduling_maintenance_interval.dart';
import 'scheduling_node_affinity.dart';
import 'scheduling_on_host_maintenance.dart';
import 'scheduling_provisioning_model.dart';

/// Sets the scheduling options for an Instance.
class Scheduling {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool? automaticRestart;

  /// Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  final int? availabilityDomain;

  /// Current number of vCPUs available for VM. 0 or unset means default vCPUs of the current machine type.
  final int? currentCpus;

  /// Current amount of memory (in MB) available for VM. 0 or unset means default amount of memory of the current machine type.
  final String? currentMemoryMb;
  final SchedulingGracefulShutdown? gracefulShutdown;

  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;

  /// Specifies the termination action for the instance.
  final SchedulingInstanceTerminationAction? instanceTerminationAction;

  /// Defines whether the instance is tolerant of higher cpu latency. This can only be set during instance creation, or when the instance is not currently running. It must not be set if the preemptible option is also set.
  final bool? latencyTolerant;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final Duration? localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final SchedulingMaintenanceInterval? maintenanceInterval;

  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final Duration? maxRunDuration;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinity>? nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final SchedulingOnHostMaintenance? onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool? preemptible;

  /// Specifies the provisioning model of the instance.
  final SchedulingProvisioningModel? provisioningModel;

  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String? terminationTime;

  Scheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.currentCpus,
    this.currentMemoryMb,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.latencyTolerant,
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
    final availabilityDomainValue = availabilityDomain;
    if (availabilityDomainValue != null) {
      map['availabilityDomain'] = availabilityDomainValue;
    }
    final currentCpusValue = currentCpus;
    if (currentCpusValue != null) {
      map['currentCpus'] = currentCpusValue;
    }
    final currentMemoryMbValue = currentMemoryMb;
    if (currentMemoryMbValue != null) {
      map['currentMemoryMb'] = currentMemoryMbValue;
    }
    final gracefulShutdownValue = gracefulShutdown;
    if (gracefulShutdownValue != null) {
      map['gracefulShutdown'] = gracefulShutdownValue.toMap();
    }
    final hostErrorTimeoutSecondsValue = hostErrorTimeoutSeconds;
    if (hostErrorTimeoutSecondsValue != null) {
      map['hostErrorTimeoutSeconds'] = hostErrorTimeoutSecondsValue;
    }
    final instanceTerminationActionValue = instanceTerminationAction;
    if (instanceTerminationActionValue != null) {
      map['instanceTerminationAction'] = instanceTerminationActionValue.value;
    }
    final latencyTolerantValue = latencyTolerant;
    if (latencyTolerantValue != null) {
      map['latencyTolerant'] = latencyTolerantValue;
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
          Input.encodeList<SchedulingNodeAffinity, Map<String, dynamic>>(
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

  factory Scheduling.fromMap(Map<String, dynamic> map) {
    return Scheduling(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] == null
          ? null
          : map['availabilityDomain'] as int,
      currentCpus:
          map['currentCpus'] == null ? null : map['currentCpus'] as int,
      currentMemoryMb: map['currentMemoryMb'] == null
          ? null
          : map['currentMemoryMb'] as String,
      gracefulShutdown: map['gracefulShutdown'] == null
          ? null
          : SchedulingGracefulShutdown.fromMap(
              (map['gracefulShutdown'] as Map).cast<String, dynamic>()),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null
          ? null
          : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : SchedulingInstanceTerminationAction.fromValue(
              map['instanceTerminationAction'] as String),
      latencyTolerant: map['latencyTolerant'] == null
          ? null
          : map['latencyTolerant'] as bool,
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : Duration.fromMap(
              (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] == null
              ? null
              : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : SchedulingMaintenanceInterval.fromValue(
              map['maintenanceInterval'] as String),
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : Duration.fromMap(
              (map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<SchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : SchedulingOnHostMaintenance.fromValue(
              map['onHostMaintenance'] as String),
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : SchedulingProvisioningModel.fromValue(
              map['provisioningModel'] as String),
      terminationTime: map['terminationTime'] == null
          ? null
          : map['terminationTime'] as String,
    );
  }
}
