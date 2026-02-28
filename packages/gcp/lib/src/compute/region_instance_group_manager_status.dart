// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_status_all_instances_config.dart';
import 'region_instance_group_manager_status_stateful.dart';
import 'region_instance_group_manager_status_version_target.dart';

class RegionInstanceGroupManagerStatus {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final List<RegionInstanceGroupManagerStatusAllInstancesConfig>?
      allInstancesConfigs;

  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool? isStable;

  /// Stateful status of the given Instance Group Manager.
  final List<RegionInstanceGroupManagerStatusStateful>? statefuls;

  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final List<RegionInstanceGroupManagerStatusVersionTarget>? versionTargets;

  /// Creates a new [RegionInstanceGroupManagerStatus].
  /// [allInstancesConfigs] Properties to set on all instances in the group. After setting
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [statefuls] Stateful status of the given Instance Group Manager.
  /// [versionTargets] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  RegionInstanceGroupManagerStatus({
    this.allInstancesConfigs,
    this.isStable,
    this.statefuls,
    this.versionTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigsValue = allInstancesConfigs;
    if (allInstancesConfigsValue != null) {
      map['allInstancesConfigs'] = pulumi.Input.encodeList<
              RegionInstanceGroupManagerStatusAllInstancesConfig,
              Map<String, dynamic>>(
          allInstancesConfigsValue, (value) => value.toMap());
    }
    final isStableValue = isStable;
    if (isStableValue != null) {
      map['isStable'] = isStableValue;
    }
    final statefulsValue = statefuls;
    if (statefulsValue != null) {
      map['statefuls'] = pulumi.Input.encodeList<
          RegionInstanceGroupManagerStatusStateful,
          Map<String, dynamic>>(statefulsValue, (value) => value.toMap());
    }
    final versionTargetsValue = versionTargets;
    if (versionTargetsValue != null) {
      map['versionTargets'] = pulumi.Input.encodeList<
          RegionInstanceGroupManagerStatusVersionTarget,
          Map<String, dynamic>>(versionTargetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionInstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatus(
      allInstancesConfigs: map['allInstancesConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionInstanceGroupManagerStatusAllInstancesConfig>(
              map['allInstancesConfigs'],
              (value) =>
                  RegionInstanceGroupManagerStatusAllInstancesConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      isStable: map['isStable'] == null ? null : map['isStable'] as bool,
      statefuls: map['statefuls'] == null
          ? null
          : pulumi.Input.decodeList<RegionInstanceGroupManagerStatusStateful>(
              map['statefuls'],
              (value) => RegionInstanceGroupManagerStatusStateful.fromMap(
                  (value as Map).cast<String, dynamic>())),
      versionTargets: map['versionTargets'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionInstanceGroupManagerStatusVersionTarget>(
              map['versionTargets'],
              (value) => RegionInstanceGroupManagerStatusVersionTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
