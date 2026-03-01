// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_scheduling_graceful_shutdown.dart';
import 'instance_scheduling_local_ssd_recovery_timeout.dart';
import 'instance_scheduling_max_run_duration.dart';
import 'instance_scheduling_node_affinity.dart';
import 'instance_scheduling_on_instance_stop_action.dart';

class InstanceScheduling {
  /// Specifies if the instance should be
  /// restarted if it was terminated by Compute Engine (not a user).
  /// Defaults to true.
  final bool? automaticRestart;

  /// Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  final int? availabilityDomain;

  /// Settings for the instance to perform a graceful shutdown. Structure is documented below.
  final InstanceSchedulingGracefulShutdown? gracefulShutdown;

  /// Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;

  /// Describe the type of termination action for VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final String? instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final InstanceSchedulingLocalSsdRecoveryTimeout? localSsdRecoveryTimeout;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final String? maintenanceInterval;

  /// The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instance_termination_action`. Structure is documented below.
  final InstanceSchedulingMaxRunDuration? maxRunDuration;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final int? minNodeCpus;

  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final List<InstanceSchedulingNodeAffinity>? nodeAffinities;

  /// Describes maintenance behavior for the
  /// instance. Can be MIGRATE or TERMINATE, for more info, read
  /// [here](https://cloud.google.com/compute/docs/instances/setting-instance-scheduling-options).
  final String? onHostMaintenance;

  /// Specifies the action to be performed when the instance is terminated using `max_run_duration` and `STOP` `instance_termination_action`. Only support `true` `discard_local_ssd` at this point. Structure is documented below.
  final InstanceSchedulingOnInstanceStopAction? onInstanceStopAction;

  /// Specifies if the instance is preemptible.
  /// If this field is set to true, then `automatic_restart` must be
  /// set to false.  Defaults to false.
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

  /// Creates a new [InstanceScheduling].
  /// [automaticRestart] Specifies if the instance should be
  /// [availabilityDomain] Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  /// [gracefulShutdown] Settings for the instance to perform a graceful shutdown. Structure is documented below.
  /// [hostErrorTimeoutSeconds] Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Describe the type of termination action for VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [maxRunDuration] The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instance_termination_action`. Structure is documented below.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] Specifies node affinities or anti-affinities
  /// [onHostMaintenance] Describes maintenance behavior for the
  /// [onInstanceStopAction] Specifies the action to be performed when the instance is terminated using `max_run_duration` and `STOP` `instance_termination_action`. Only support `true` `discard_local_ssd` at this point. Structure is documented below.
  /// [preemptible] Specifies if the instance is preemptible.
  /// [provisioningModel] Describe the type of preemptible VM. This field accepts the value `STANDARD` or `SPOT`. If the value is `STANDARD`, there will be no discount. If this   is set to `SPOT`,
  /// [skipGuestOsShutdown] Boolean parameter. Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  InstanceScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
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
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'availabilityDomain': ?availabilityDomain,
      'gracefulShutdown': ?gracefulShutdown == null
          ? null
          : gracefulShutdown!.toMap(),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeout': ?localSsdRecoveryTimeout == null
          ? null
          : localSsdRecoveryTimeout!.toMap(),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?maxRunDuration == null
          ? null
          : maxRunDuration!.toMap(),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?nodeAffinities == null
          ? null
          : pulumi.Input.encodeList<
              InstanceSchedulingNodeAffinity,
              Map<String, dynamic>
            >(nodeAffinities!, (value) => value.toMap()),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?onInstanceStopAction == null
          ? null
          : onInstanceStopAction!.toMap(),
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory InstanceScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceScheduling(
      automaticRestart: map['automaticRestart'] == null
          ? null
          : map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] == null
          ? null
          : map['availabilityDomain'] as int,
      gracefulShutdown: map['gracefulShutdown'] == null
          ? null
          : InstanceSchedulingGracefulShutdown.fromMap(
              (map['gracefulShutdown'] as Map).cast<String, dynamic>(),
            ),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null
          ? null
          : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null
          ? null
          : map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null
          ? null
          : InstanceSchedulingLocalSsdRecoveryTimeout.fromMap(
              (map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>(),
            ),
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : map['maintenanceInterval'] as String,
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : InstanceSchedulingMaxRunDuration.fromMap(
              (map['maxRunDuration'] as Map).cast<String, dynamic>(),
            ),
      minNodeCpus: map['minNodeCpus'] == null
          ? null
          : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : pulumi.Input.decodeList<InstanceSchedulingNodeAffinity>(
              map['nodeAffinities'],
              (value) => InstanceSchedulingNodeAffinity.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : map['onHostMaintenance'] as String,
      onInstanceStopAction: map['onInstanceStopAction'] == null
          ? null
          : InstanceSchedulingOnInstanceStopAction.fromMap(
              (map['onInstanceStopAction'] as Map).cast<String, dynamic>(),
            ),
      preemptible: map['preemptible'] == null
          ? null
          : map['preemptible'] as bool,
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
