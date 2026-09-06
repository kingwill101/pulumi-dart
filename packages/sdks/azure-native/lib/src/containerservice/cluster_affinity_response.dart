// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_selector_response.dart';

/// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
class ClusterAffinityResponse {
  /// If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  final pulumi.Input<ClusterSelectorResponse?>? requiredDuringSchedulingIgnoredDuringExecution;

  /// Creates a new [ClusterAffinityResponse].
  /// [requiredDuringSchedulingIgnoredDuringExecution] If the affinity requirements specified by this field are not met at scheduling time, the resource will not be scheduled onto the cluster. If the affinity requirements specified by this field cease to be met at some point after the placement (e.g. due to an update), the system may or may not try to eventually remove the resource from the cluster.
  const ClusterAffinityResponse({
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<ClusterSelectorResponse, Map<String, dynamic>>(requiredDuringSchedulingIgnoredDuringExecution, (value) => value.toMap()),
    };
  }

  factory ClusterAffinityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAffinityResponse(
      requiredDuringSchedulingIgnoredDuringExecution: (() { final guardedValue = map['requiredDuringSchedulingIgnoredDuringExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
