// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_template_scheduling_graceful_shutdown/instance_template_scheduling_graceful_shutdown.dart';
import '../instance_template_scheduling_local_ssd_recovery_timeout/instance_template_scheduling_local_ssd_recovery_timeout.dart';
import '../instance_template_scheduling_max_run_duration/instance_template_scheduling_max_run_duration.dart';
import '../instance_template_scheduling_node_affinity/instance_template_scheduling_node_affinity.dart';
import '../instance_template_scheduling_on_instance_stop_action/instance_template_scheduling_on_instance_stop_action.dart';

class InstanceTemplateScheduling {
  /// Specifies whether the instance should be
  /// automatically restarted if it is terminated by Compute Engine (not
  /// terminated by a user). This defaults to true.
  final bool? automaticRestart;

  /// Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  final int? availabilityDomain;

  /// Settings for the instance to perform a graceful shutdown. Structure is documented below.
  final InstanceTemplateSchedulingGracefulShutdown? gracefulShutdown;

  /// Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;

  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final String? instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final List<InstanceTemplateSchedulingLocalSsdRecoveryTimeout>?
      localSsdRecoveryTimeouts;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final String? maintenanceInterval;

  /// The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instance_termination_action`. Structure is documented below.
  final InstanceTemplateSchedulingMaxRunDuration? maxRunDuration;

  /// Minimum number of cpus for the instance.
  final int? minNodeCpus;

  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final List<InstanceTemplateSchedulingNodeAffinity>? nodeAffinities;

  /// Defines the maintenance behavior for this
  /// instance.
  final String? onHostMaintenance;

  /// Specifies the action to be performed when the instance is terminated using `max_run_duration` and `STOP` `instance_termination_action`. Only support `true` `discard_local_ssd` at this point. Structure is documented below.
  final InstanceTemplateSchedulingOnInstanceStopAction? onInstanceStopAction;

  /// Allows instance to be preempted. This defaults to
  /// false. Read more on this
  /// [here](https://cloud.google.com/compute/docs/instances/preemptible).
  final bool? preemptible;

  /// Describe the type of preemptible VM. This field accepts the value `STANDARD` or `SPOT`. If the value is `STANDARD`, there will be no discount. If this   is set to `SPOT`,
  /// `preemptible` should be `true` and `automatic_restart` should be
  /// `false`. For more info about
  /// `SPOT`, read [here](https://cloud.google.com/compute/docs/instances/spot)
  final String? provisioningModel;

  /// Boolean parameter. Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final bool? skipGuestOsShutdown;

  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String? terminationTime;

  InstanceTemplateScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeouts,
    this.maintenanceInterval,
    this.maxRunDuration,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.onInstanceStopAction,
    this.preemptible,
    this.provisioningModel,
    this.skipGuestOsShutdown,
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
      map['instanceTerminationAction'] = instanceTerminationActionValue;
    }
    final localSsdRecoveryTimeoutsValue = localSsdRecoveryTimeouts;
    if (localSsdRecoveryTimeoutsValue != null) {
      map['localSsdRecoveryTimeouts'] = pulumi.Input.encodeList<
              InstanceTemplateSchedulingLocalSsdRecoveryTimeout,
              Map<String, dynamic>>(
          localSsdRecoveryTimeoutsValue, (value) => value.toMap());
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue;
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
          InstanceTemplateSchedulingNodeAffinity,
          Map<String, dynamic>>(nodeAffinitiesValue, (value) => value.toMap());
    }
    final onHostMaintenanceValue = onHostMaintenance;
    if (onHostMaintenanceValue != null) {
      map['onHostMaintenance'] = onHostMaintenanceValue;
    }
    final onInstanceStopActionValue = onInstanceStopAction;
    if (onInstanceStopActionValue != null) {
      map['onInstanceStopAction'] = onInstanceStopActionValue.toMap();
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final provisioningModelValue = provisioningModel;
    if (provisioningModelValue != null) {
      map['provisioningModel'] = provisioningModelValue;
    }
    final skipGuestOsShutdownValue = skipGuestOsShutdown;
    if (skipGuestOsShutdownValue != null) {
      map['skipGuestOsShutdown'] = skipGuestOsShutdownValue;
    }
    final terminationTimeValue = terminationTime;
    if (terminationTimeValue != null) {
      map['terminationTime'] = terminationTimeValue;
    }
    return map;
  }

  factory InstanceTemplateScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateScheduling(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] == null
          ? null
          : map['availabilityDomain'] as int,
      gracefulShutdown: map['gracefulShutdown'] == null
          ? null
          : InstanceTemplateSchedulingGracefulShutdown.fromMap(
              (map['gracefulShutdown'] as Map).cast<String, dynamic>()),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null
          ? null
          : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeouts: map['localSsdRecoveryTimeouts'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceTemplateSchedulingLocalSsdRecoveryTimeout>(
              map['localSsdRecoveryTimeouts'],
              (value) =>
                  InstanceTemplateSchedulingLocalSsdRecoveryTimeout.fromMap(
                      (value as Map).cast<String, dynamic>())),
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : map['maintenanceInterval'] as String,
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : InstanceTemplateSchedulingMaxRunDuration.fromMap(
              (map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : pulumi.Input.decodeList<InstanceTemplateSchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) => InstanceTemplateSchedulingNodeAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : map['onHostMaintenance'] as String,
      onInstanceStopAction: map['onInstanceStopAction'] == null
          ? null
          : InstanceTemplateSchedulingOnInstanceStopAction.fromMap(
              (map['onInstanceStopAction'] as Map).cast<String, dynamic>()),
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : map['provisioningModel'] as String,
      skipGuestOsShutdown: map['skipGuestOsShutdown'] == null
          ? null
          : map['skipGuestOsShutdown'] as bool,
      terminationTime: map['terminationTime'] == null
          ? null
          : map['terminationTime'] as String,
    );
  }
}
