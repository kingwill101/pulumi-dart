// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'duration_response2.dart';
import 'scheduling_node_affinity_response2.dart';

/// Sets the scheduling options for an Instance.
class SchedulingResponse2 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool automaticRestart;

  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int hostErrorTimeoutSeconds;

  /// Specifies the termination action for the instance.
  final String instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final DurationResponse2 localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String locationHint;

  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final int maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final String maintenanceInterval;

  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final DurationResponse2 maxRunDuration;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinityResponse2> nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final String onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool preemptible;

  /// Specifies the provisioning model of the instance.
  final String provisioningModel;

  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String terminationTime;

  SchedulingResponse2({
    required this.automaticRestart,
    required this.hostErrorTimeoutSeconds,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeout,
    required this.locationHint,
    required this.maintenanceFreezeDurationHours,
    required this.maintenanceInterval,
    required this.maxRunDuration,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.preemptible,
    required this.provisioningModel,
    required this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticRestart'] = automaticRestart;
    map['hostErrorTimeoutSeconds'] = hostErrorTimeoutSeconds;
    map['instanceTerminationAction'] = instanceTerminationAction;
    map['localSsdRecoveryTimeout'] = localSsdRecoveryTimeout.toMap();
    map['locationHint'] = locationHint;
    map['maintenanceFreezeDurationHours'] = maintenanceFreezeDurationHours;
    map['maintenanceInterval'] = maintenanceInterval;
    map['maxRunDuration'] = maxRunDuration.toMap();
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] =
        Input.encodeList<SchedulingNodeAffinityResponse2, Map<String, dynamic>>(
            nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['preemptible'] = preemptible;
    map['provisioningModel'] = provisioningModel;
    map['terminationTime'] = terminationTime;
    return map;
  }

  factory SchedulingResponse2.fromMap(Map<String, dynamic> map) {
    return SchedulingResponse2(
      automaticRestart: map['automaticRestart'] as bool,
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeout: DurationResponse2.fromMap(
          (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      locationHint: map['locationHint'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] as String,
      maxRunDuration: DurationResponse2.fromMap(
          (map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities: Input.decodeList<SchedulingNodeAffinityResponse2>(
          map['nodeAffinities'],
          (value) => SchedulingNodeAffinityResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      preemptible: map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] as String,
      terminationTime: map['terminationTime'] as String,
    );
  }
}
