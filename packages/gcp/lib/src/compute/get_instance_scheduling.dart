// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_scheduling_graceful_shutdown.dart';
import 'get_instance_scheduling_local_ssd_recovery_timeout.dart';
import 'get_instance_scheduling_max_run_duration.dart';
import 'get_instance_scheduling_node_affinity.dart';
import 'get_instance_scheduling_on_instance_stop_action.dart';

class GetInstanceScheduling {
  /// Specifies if the instance should be
  /// restarted if it was terminated by Compute Engine (not a user).
  final bool automaticRestart;

  /// Specifies the availability domain, which this instance should be scheduled on.
  final int availabilityDomain;

  /// Settings for the instance to perform a graceful shutdown.
  final List<GetInstanceSchedulingGracefulShutdown> gracefulShutdowns;

  /// Beta Time in seconds for host error detection.
  final int hostErrorTimeoutSeconds;

  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final String instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final List<GetInstanceSchedulingLocalSsdRecoveryTimeout>
      localSsdRecoveryTimeouts;

  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final String maintenanceInterval;

  /// The timeout for new network connections to hosts.
  final List<GetInstanceSchedulingMaxRunDuration> maxRunDurations;
  final int minNodeCpus;

  /// Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  final List<GetInstanceSchedulingNodeAffinity> nodeAffinities;

  /// Describes maintenance behavior for the
  /// instance. One of `MIGRATE` or `TERMINATE`, for more info, read
  /// [here](https://cloud.google.com/compute/docs/instances/setting-instance-scheduling-options)
  final String onHostMaintenance;

  /// Defines the behaviour for instances with the instance_termination_action.
  final List<GetInstanceSchedulingOnInstanceStopAction> onInstanceStopActions;

  /// Whether the instance is preemptible.
  final bool preemptible;

  /// Describe the type of preemptible VM.
  final String provisioningModel;

  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final bool skipGuestOsShutdown;

  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final String terminationTime;

  /// Creates a new [GetInstanceScheduling].
  /// [automaticRestart] Specifies if the instance should be
  /// [availabilityDomain] Specifies the availability domain, which this instance should be scheduled on.
  /// [gracefulShutdowns] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Beta Time in seconds for host error detection.
  /// [instanceTerminationAction] Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeouts] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDurations] The timeout for new network connections to hosts.
  /// [minNodeCpus] Required.
  /// [nodeAffinities] Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  /// [onHostMaintenance] Describes maintenance behavior for the
  /// [onInstanceStopActions] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Whether the instance is preemptible.
  /// [provisioningModel] Describe the type of preemptible VM.
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated,
  GetInstanceScheduling({
    required this.automaticRestart,
    required this.availabilityDomain,
    required this.gracefulShutdowns,
    required this.hostErrorTimeoutSeconds,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeouts,
    required this.maintenanceInterval,
    required this.maxRunDurations,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.onInstanceStopActions,
    required this.preemptible,
    required this.provisioningModel,
    required this.skipGuestOsShutdown,
    required this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticRestart'] = automaticRestart;
    map['availabilityDomain'] = availabilityDomain;
    map['gracefulShutdowns'] = pulumi.Input.encodeList<
        GetInstanceSchedulingGracefulShutdown,
        Map<String, dynamic>>(gracefulShutdowns, (value) => value.toMap());
    map['hostErrorTimeoutSeconds'] = hostErrorTimeoutSeconds;
    map['instanceTerminationAction'] = instanceTerminationAction;
    map['localSsdRecoveryTimeouts'] = pulumi.Input.encodeList<
            GetInstanceSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(
        localSsdRecoveryTimeouts, (value) => value.toMap());
    map['maintenanceInterval'] = maintenanceInterval;
    map['maxRunDurations'] = pulumi.Input.encodeList<
        GetInstanceSchedulingMaxRunDuration,
        Map<String, dynamic>>(maxRunDurations, (value) => value.toMap());
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] = pulumi.Input.encodeList<
        GetInstanceSchedulingNodeAffinity,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['onInstanceStopActions'] = pulumi.Input.encodeList<
        GetInstanceSchedulingOnInstanceStopAction,
        Map<String, dynamic>>(onInstanceStopActions, (value) => value.toMap());
    map['preemptible'] = preemptible;
    map['provisioningModel'] = provisioningModel;
    map['skipGuestOsShutdown'] = skipGuestOsShutdown;
    map['terminationTime'] = terminationTime;
    return map;
  }

  factory GetInstanceScheduling.fromMap(Map<String, dynamic> map) {
    return GetInstanceScheduling(
      automaticRestart: map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] as int,
      gracefulShutdowns:
          pulumi.Input.decodeList<GetInstanceSchedulingGracefulShutdown>(
              map['gracefulShutdowns'],
              (value) => GetInstanceSchedulingGracefulShutdown.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeouts:
          pulumi.Input.decodeList<GetInstanceSchedulingLocalSsdRecoveryTimeout>(
              map['localSsdRecoveryTimeouts'],
              (value) => GetInstanceSchedulingLocalSsdRecoveryTimeout.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceInterval: map['maintenanceInterval'] as String,
      maxRunDurations:
          pulumi.Input.decodeList<GetInstanceSchedulingMaxRunDuration>(
              map['maxRunDurations'],
              (value) => GetInstanceSchedulingMaxRunDuration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities:
          pulumi.Input.decodeList<GetInstanceSchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) => GetInstanceSchedulingNodeAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      onInstanceStopActions:
          pulumi.Input.decodeList<GetInstanceSchedulingOnInstanceStopAction>(
              map['onInstanceStopActions'],
              (value) => GetInstanceSchedulingOnInstanceStopAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      preemptible: map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] as String,
      skipGuestOsShutdown: map['skipGuestOsShutdown'] as bool,
      terminationTime: map['terminationTime'] as String,
    );
  }
}
