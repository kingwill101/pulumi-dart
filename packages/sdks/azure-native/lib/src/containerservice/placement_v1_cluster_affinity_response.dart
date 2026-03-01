// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_cluster_selector_response.dart';

/// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
class PlacementV1ClusterAffinityResponse {
  /// If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  final PlacementV1ClusterSelectorResponse? requiredDuringSchedulingIgnoredDuringExecution;

  /// Creates a new [PlacementV1ClusterAffinityResponse].
  /// [requiredDuringSchedulingIgnoredDuringExecution] If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  PlacementV1ClusterAffinityResponse({
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredDuringSchedulingIgnoredDuringExecution': ?requiredDuringSchedulingIgnoredDuringExecution == null ? null : requiredDuringSchedulingIgnoredDuringExecution!.toMap(),
    };
  }

  factory PlacementV1ClusterAffinityResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterAffinityResponse(
      requiredDuringSchedulingIgnoredDuringExecution: map['requiredDuringSchedulingIgnoredDuringExecution'] == null ? null : PlacementV1ClusterSelectorResponse.fromMap((map['requiredDuringSchedulingIgnoredDuringExecution'] as Map).cast<String, dynamic>()),
    );
  }
}

