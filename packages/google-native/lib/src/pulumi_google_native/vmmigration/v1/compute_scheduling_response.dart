// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'scheduling_node_affinity_response4.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingResponse {
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final int minNodeCpus;

  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final List<SchedulingNodeAffinityResponse4> nodeAffinities;

  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final String onHostMaintenance;

  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final String restartType;

  ComputeSchedulingResponse({
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.restartType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] =
        Input.encodeList<SchedulingNodeAffinityResponse4, Map<String, dynamic>>(
            nodeAffinities, (value) => value.toMap());
    map['onHostMaintenance'] = onHostMaintenance;
    map['restartType'] = restartType;
    return map;
  }

  factory ComputeSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingResponse(
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities: Input.decodeList<SchedulingNodeAffinityResponse4>(
          map['nodeAffinities'],
          (value) => SchedulingNodeAffinityResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] as String,
      restartType: map['restartType'] as String,
    );
  }
}
