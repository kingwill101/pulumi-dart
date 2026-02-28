// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_stateful_response_compute_v1.dart';
import 'instance_group_manager_status_version_target_response_compute_v1.dart';

class InstanceGroupManagerStatusResponseComputeV1 {
  /// The URL of the Autoscaler that targets this instance group manager.
  final String autoscaler;

  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool isStable;

  /// Stateful status of the given Instance Group Manager.
  final InstanceGroupManagerStatusStatefulResponseComputeV1 stateful;

  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final InstanceGroupManagerStatusVersionTargetResponseComputeV1 versionTarget;

  /// Creates a new [InstanceGroupManagerStatusResponseComputeV1].
  /// [autoscaler] The URL of the Autoscaler that targets this instance group manager.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [stateful] Stateful status of the given Instance Group Manager.
  /// [versionTarget] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  InstanceGroupManagerStatusResponseComputeV1({
    required this.autoscaler,
    required this.isStable,
    required this.stateful,
    required this.versionTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaler'] = autoscaler;
    map['isStable'] = isStable;
    map['stateful'] = stateful.toMap();
    map['versionTarget'] = versionTarget.toMap();
    return map;
  }

  factory InstanceGroupManagerStatusResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusResponseComputeV1(
      autoscaler: map['autoscaler'] as String,
      isStable: map['isStable'] as bool,
      stateful: InstanceGroupManagerStatusStatefulResponseComputeV1.fromMap(
          (map['stateful'] as Map).cast<String, dynamic>()),
      versionTarget:
          InstanceGroupManagerStatusVersionTargetResponseComputeV1.fromMap(
              (map['versionTarget'] as Map).cast<String, dynamic>()),
    );
  }
}
