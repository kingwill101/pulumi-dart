// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_beta.dart';
import 'scheduling_instance_termination_action_compute_beta.dart';
import 'scheduling_maintenance_interval_compute_beta.dart';
import 'scheduling_node_affinity_compute_beta.dart';
import 'scheduling_on_host_maintenance_compute_beta.dart';
import 'scheduling_provisioning_model_compute_beta.dart';

/// Sets the scheduling options for an Instance.
class SchedulingComputeBeta {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final bool? automaticRestart;

  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;

  /// Specifies the termination action for the instance.
  final SchedulingInstanceTerminationActionComputeBeta?
  instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final DurationComputeBeta? localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final SchedulingMaintenanceIntervalComputeBeta? maintenanceInterval;

  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final DurationComputeBeta? maxRunDuration;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final List<SchedulingNodeAffinityComputeBeta>? nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final SchedulingOnHostMaintenanceComputeBeta? onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final bool? preemptible;

  /// Specifies the provisioning model of the instance.
  final SchedulingProvisioningModelComputeBeta? provisioningModel;

  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String? terminationTime;

  /// Creates a new [SchedulingComputeBeta].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [hostErrorTimeoutSeconds] Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Specifies the termination action for the instance.
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  /// [locationHint] An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [maxRunDuration] Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  /// [onHostMaintenance] Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  /// [preemptible] Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  /// [provisioningModel] Specifies the provisioning model of the instance.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  SchedulingComputeBeta({
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
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction == null
          ? null
          : instanceTerminationAction!.value,
      'localSsdRecoveryTimeout': ?localSsdRecoveryTimeout == null
          ? null
          : localSsdRecoveryTimeout!.toMap(),
      'locationHint': ?locationHint,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval': ?maintenanceInterval == null
          ? null
          : maintenanceInterval!.value,
      'maxRunDuration': ?maxRunDuration == null
          ? null
          : maxRunDuration!.toMap(),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?nodeAffinities == null
          ? null
          : pulumi.Input.encodeList<
              SchedulingNodeAffinityComputeBeta,
              Map<String, dynamic>
            >(nodeAffinities!, (value) => value.toMap()),
      'onHostMaintenance': ?onHostMaintenance == null
          ? null
          : onHostMaintenance!.value,
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel == null
          ? null
          : provisioningModel!.value,
      'terminationTime': ?terminationTime,
    };
  }

  factory SchedulingComputeBeta.fromMap(Map<String, dynamic> map) {
    return SchedulingComputeBeta(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null
          ? null
          : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : SchedulingInstanceTerminationActionComputeBeta.fromValue(
              map['instanceTerminationAction'] as String,
            ),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : DurationComputeBeta.fromMap(
              (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>(),
            ),
      locationHint: map['locationHint'] == null
          ? null
          : map['locationHint'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] == null
          ? null
          : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : SchedulingMaintenanceIntervalComputeBeta.fromValue(
              map['maintenanceInterval'] as String,
            ),
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : DurationComputeBeta.fromMap(
              (map['maxRunDuration'] as Map).cast<String, dynamic>(),
            ),
      minNodeCpus: map['minNodeCpus'] == null
          ? null
          : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : pulumi.Input.decodeList<SchedulingNodeAffinityComputeBeta>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinityComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : SchedulingOnHostMaintenanceComputeBeta.fromValue(
              map['onHostMaintenance'] as String,
            ),
      preemptible: map['preemptible'] == null
          ? null
          : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : SchedulingProvisioningModelComputeBeta.fromValue(
              map['provisioningModel'] as String,
            ),
      terminationTime: map['terminationTime'] == null
          ? null
          : map['terminationTime'] as String,
    );
  }
}
