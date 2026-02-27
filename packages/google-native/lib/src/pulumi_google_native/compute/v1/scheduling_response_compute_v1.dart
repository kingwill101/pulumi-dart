// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_v1.dart';
import 'scheduling_node_affinity_response_compute_v1.dart';

/// Sets the scheduling options for an Instance.
class SchedulingResponseComputeV1 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool automaticRestart;

  /// Specifies the termination action for the instance.
  final String instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final DurationResponseComputeV1 localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String locationHint;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinityResponseComputeV1> nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final String onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool preemptible;

  /// Specifies the provisioning model of the instance.
  final String provisioningModel;

  SchedulingResponseComputeV1({
    required this.automaticRestart,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeout,
    required this.locationHint,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.preemptible,
    required this.provisioningModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticRestart'] = automaticRestart;
    map['instanceTerminationAction'] = instanceTerminationAction;
    map['localSsdRecoveryTimeout'] = localSsdRecoveryTimeout.toMap();
    map['locationHint'] = locationHint;
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] = pulumi.Input.encodeList<
        SchedulingNodeAffinityResponseComputeV1,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['preemptible'] = preemptible;
    map['provisioningModel'] = provisioningModel;
    return map;
  }

  factory SchedulingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SchedulingResponseComputeV1(
      automaticRestart: map['automaticRestart'] as bool,
      instanceTerminationAction: map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeout: DurationResponseComputeV1.fromMap(
          (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      locationHint: map['locationHint'] as String,
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities:
          pulumi.Input.decodeList<SchedulingNodeAffinityResponseComputeV1>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinityResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      preemptible: map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] as String,
    );
  }
}
