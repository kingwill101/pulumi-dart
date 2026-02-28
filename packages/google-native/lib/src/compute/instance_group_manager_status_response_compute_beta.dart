// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_all_instances_config_response_compute_beta.dart';
import 'instance_group_manager_status_stateful_response_compute_beta.dart';
import 'instance_group_manager_status_version_target_response_compute_beta.dart';

class InstanceGroupManagerStatusResponseComputeBeta {
  /// [Output only] Status of all-instances configuration on the group.
  final InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta allInstancesConfig;
  /// The URL of the Autoscaler that targets this instance group manager.
  final String autoscaler;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool isStable;
  /// Stateful status of the given Instance Group Manager.
  final InstanceGroupManagerStatusStatefulResponseComputeBeta stateful;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final InstanceGroupManagerStatusVersionTargetResponseComputeBeta versionTarget;

  /// Creates a new [InstanceGroupManagerStatusResponseComputeBeta].
  /// [allInstancesConfig] [Output only] Status of all-instances configuration on the group.
  /// [autoscaler] The URL of the Autoscaler that targets this instance group manager.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [stateful] Stateful status of the given Instance Group Manager.
  /// [versionTarget] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  InstanceGroupManagerStatusResponseComputeBeta({
    required this.allInstancesConfig,
    required this.autoscaler,
    required this.isStable,
    required this.stateful,
    required this.versionTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': allInstancesConfig.toMap(),
      'autoscaler': autoscaler,
      'isStable': isStable,
      'stateful': stateful.toMap(),
      'versionTarget': versionTarget.toMap(),
    };
  }

  factory InstanceGroupManagerStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusResponseComputeBeta(
      allInstancesConfig: InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta.fromMap((map['allInstancesConfig'] as Map).cast<String, dynamic>()),
      autoscaler: map['autoscaler'] as String,
      isStable: map['isStable'] as bool,
      stateful: InstanceGroupManagerStatusStatefulResponseComputeBeta.fromMap((map['stateful'] as Map).cast<String, dynamic>()),
      versionTarget: InstanceGroupManagerStatusVersionTargetResponseComputeBeta.fromMap((map['versionTarget'] as Map).cast<String, dynamic>()),
    );
  }
}

