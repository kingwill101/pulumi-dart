// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'compute_scheduling_on_host_maintenance.dart';
import 'compute_scheduling_restart_type.dart';
import 'scheduling_node_affinity4.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeScheduling {
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final List<SchedulingNodeAffinity4>? nodeAffinities;

  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final ComputeSchedulingOnHostMaintenance? onHostMaintenance;

  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final ComputeSchedulingRestartType? restartType;

  ComputeScheduling({
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.restartType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minNodeCpusValue = minNodeCpus;
    if (minNodeCpusValue != null) {
      map['minNodeCpus'] = minNodeCpusValue;
    }
    final nodeAffinitiesValue = nodeAffinities;
    if (nodeAffinitiesValue != null) {
      map['nodeAffinities'] =
          Input.encodeList<SchedulingNodeAffinity4, Map<String, dynamic>>(
              nodeAffinitiesValue, (value) => value.toMap());
    }
    final onHostMaintenanceValue = onHostMaintenance;
    if (onHostMaintenanceValue != null) {
      map['onHostMaintenance'] = onHostMaintenanceValue.value;
    }
    final restartTypeValue = restartType;
    if (restartTypeValue != null) {
      map['restartType'] = restartTypeValue.value;
    }
    return map;
  }

  factory ComputeScheduling.fromMap(Map<String, dynamic> map) {
    return ComputeScheduling(
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null
          ? null
          : Input.decodeList<SchedulingNodeAffinity4>(
              map['nodeAffinities'],
              (value) => SchedulingNodeAffinity4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null
          ? null
          : ComputeSchedulingOnHostMaintenance.fromValue(
              map['onHostMaintenance'] as String),
      restartType: map['restartType'] == null
          ? null
          : ComputeSchedulingRestartType.fromValue(
              map['restartType'] as String),
    );
  }
}
