// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_selector.dart';

/// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
class PlacementV1ClusterAffinity {
  /// If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  final pulumi.Input<PlacementV1ClusterSelector>? requiredDuringSchedulingIgnoredDuringExecution;

  /// Creates a new [PlacementV1ClusterAffinity].
  /// [requiredDuringSchedulingIgnoredDuringExecution] If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  const PlacementV1ClusterAffinity({
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<PlacementV1ClusterSelector, Map<String, dynamic>>(requiredDuringSchedulingIgnoredDuringExecution, (value) => value.toMap()),
    };
  }

  factory PlacementV1ClusterAffinity.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterAffinity(
      requiredDuringSchedulingIgnoredDuringExecution: (() { final guardedValue = map['requiredDuringSchedulingIgnoredDuringExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1ClusterSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
