// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'scheduling_node_affinity_response5.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingResponse2 {
  final bool automaticRestart;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final int minNodeCpus;

  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final List<SchedulingNodeAffinityResponse5> nodeAffinities;

  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final String onHostMaintenance;

  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final String restartType;

  ComputeSchedulingResponse2({
    required this.automaticRestart,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.restartType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticRestart'] = automaticRestart;
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] =
        Input.encodeList<SchedulingNodeAffinityResponse5, Map<String, dynamic>>(
            nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['restartType'] = restartType;
    return map;
  }

  factory ComputeSchedulingResponse2.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingResponse2(
      automaticRestart: map['automaticRestart'] as bool,
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities: Input.decodeList<SchedulingNodeAffinityResponse5>(
          map['nodeAffinities'],
          (value) => SchedulingNodeAffinityResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      restartType: map['restartType'] as String,
    );
  }
}
