// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_all_instances_config_response2.dart';
import 'instance_group_manager_status_stateful_response2.dart';
import 'instance_group_manager_status_version_target_response2.dart';

class InstanceGroupManagerStatusResponse2 {
  /// [Output only] Status of all-instances configuration on the group.
  final InstanceGroupManagerStatusAllInstancesConfigResponse2
      allInstancesConfig;

  /// The URL of the Autoscaler that targets this instance group manager.
  final String autoscaler;

  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool isStable;

  /// Stateful status of the given Instance Group Manager.
  final InstanceGroupManagerStatusStatefulResponse2 stateful;

  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final InstanceGroupManagerStatusVersionTargetResponse2 versionTarget;

  InstanceGroupManagerStatusResponse2({
    required this.allInstancesConfig,
    required this.autoscaler,
    required this.isStable,
    required this.stateful,
    required this.versionTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allInstancesConfig'] = allInstancesConfig.toMap();
    map['autoscaler'] = autoscaler;
    map['isStable'] = isStable;
    map['stateful'] = stateful.toMap();
    map['versionTarget'] = versionTarget.toMap();
    return map;
  }

  factory InstanceGroupManagerStatusResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusResponse2(
      allInstancesConfig:
          InstanceGroupManagerStatusAllInstancesConfigResponse2.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>()),
      autoscaler: map['autoscaler'] as String,
      isStable: map['isStable'] as bool,
      stateful: InstanceGroupManagerStatusStatefulResponse2.fromMap(
          (map['stateful'] as Map).cast<String, dynamic>()),
      versionTarget: InstanceGroupManagerStatusVersionTargetResponse2.fromMap(
          (map['versionTarget'] as Map).cast<String, dynamic>()),
    );
  }
}
