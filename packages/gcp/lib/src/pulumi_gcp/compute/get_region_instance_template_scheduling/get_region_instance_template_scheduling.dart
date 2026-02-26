// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_template_scheduling_graceful_shutdown/get_region_instance_template_scheduling_graceful_shutdown.dart';
import '../get_region_instance_template_scheduling_local_ssd_recovery_timeout/get_region_instance_template_scheduling_local_ssd_recovery_timeout.dart';
import '../get_region_instance_template_scheduling_max_run_duration/get_region_instance_template_scheduling_max_run_duration.dart';
import '../get_region_instance_template_scheduling_node_affinity/get_region_instance_template_scheduling_node_affinity.dart';
import '../get_region_instance_template_scheduling_on_instance_stop_action/get_region_instance_template_scheduling_on_instance_stop_action.dart';

class GetRegionInstanceTemplateScheduling {
  /// Specifies whether the instance should be
  /// automatically restarted if it is terminated by Compute Engine (not
  /// terminated by a user). This defaults to true.
  final bool automaticRestart;

  /// Specifies the availability domain, which this instance should be scheduled on.
  final int availabilityDomain;

  /// Settings for the instance to perform a graceful shutdown.
  final List<GetRegionInstanceTemplateSchedulingGracefulShutdown>
      gracefulShutdowns;

  /// Beta Time in seconds for host error detection.
  final int hostErrorTimeoutSeconds;

  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final String instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final List<GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>
      localSsdRecoveryTimeouts;

  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final String maintenanceInterval;

  /// The timeout for new network connections to hosts.
  final List<GetRegionInstanceTemplateSchedulingMaxRunDuration> maxRunDurations;

  /// Minimum number of cpus for the instance.
  final int minNodeCpus;

  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final List<GetRegionInstanceTemplateSchedulingNodeAffinity> nodeAffinities;

  /// Defines the maintenance behavior for this
  /// instance.
  final String onHostMaintenance;

  /// Defines the behaviour for instances with the instance_termination_action.
  final List<GetRegionInstanceTemplateSchedulingOnInstanceStopAction>
      onInstanceStopActions;

  /// Allows instance to be preempted. This defaults to
  /// false. Read more on this
  /// [here](https://cloud.google.com/compute/docs/instances/preemptible).
  final bool preemptible;

  /// Describe the type of preemptible VM.
  final String provisioningModel;

  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final bool skipGuestOsShutdown;

  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final String terminationTime;

  GetRegionInstanceTemplateScheduling({
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
    map['gracefulShutdowns'] = Input.encodeList<
        GetRegionInstanceTemplateSchedulingGracefulShutdown,
        Map<String, dynamic>>(gracefulShutdowns, (value) => value.toMap());
    map['hostErrorTimeoutSeconds'] = hostErrorTimeoutSeconds;
    map['instanceTerminationAction'] = instanceTerminationAction;
    map['localSsdRecoveryTimeouts'] = Input.encodeList<
            GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout,
            Map<String, dynamic>>(
        localSsdRecoveryTimeouts, (value) => value.toMap());
    map['maintenanceInterval'] = maintenanceInterval;
    map['maxRunDurations'] = Input.encodeList<
        GetRegionInstanceTemplateSchedulingMaxRunDuration,
        Map<String, dynamic>>(maxRunDurations, (value) => value.toMap());
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] = Input.encodeList<
        GetRegionInstanceTemplateSchedulingNodeAffinity,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['onInstanceStopActions'] = Input.encodeList<
        GetRegionInstanceTemplateSchedulingOnInstanceStopAction,
        Map<String, dynamic>>(onInstanceStopActions, (value) => value.toMap());
    map['preemptible'] = preemptible;
    map['provisioningModel'] = provisioningModel;
    map['skipGuestOsShutdown'] = skipGuestOsShutdown;
    map['terminationTime'] = terminationTime;
    return map;
  }

  factory GetRegionInstanceTemplateScheduling.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateScheduling(
      automaticRestart: map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] as int,
      gracefulShutdowns:
          Input.decodeList<GetRegionInstanceTemplateSchedulingGracefulShutdown>(
              map['gracefulShutdowns'],
              (value) =>
                  GetRegionInstanceTemplateSchedulingGracefulShutdown.fromMap(
                      (value as Map).cast<String, dynamic>())),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeouts: Input.decodeList<
              GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>(
          map['localSsdRecoveryTimeouts'],
          (value) => GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout
              .fromMap((value as Map).cast<String, dynamic>())),
      maintenanceInterval: map['maintenanceInterval'] as String,
      maxRunDurations:
          Input.decodeList<GetRegionInstanceTemplateSchedulingMaxRunDuration>(
              map['maxRunDurations'],
              (value) =>
                  GetRegionInstanceTemplateSchedulingMaxRunDuration.fromMap(
                      (value as Map).cast<String, dynamic>())),
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities:
          Input.decodeList<GetRegionInstanceTemplateSchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) =>
                  GetRegionInstanceTemplateSchedulingNodeAffinity.fromMap(
                      (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      onInstanceStopActions: Input.decodeList<
              GetRegionInstanceTemplateSchedulingOnInstanceStopAction>(
          map['onInstanceStopActions'],
          (value) =>
              GetRegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      preemptible: map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] as String,
      skipGuestOsShutdown: map['skipGuestOsShutdown'] as bool,
      terminationTime: map['terminationTime'] as String,
    );
  }
}
