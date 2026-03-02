// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_vserver_groups_vserver_group.dart';

/// Input properties used for looking up and filtering ScalingGroupVServerGroups resources.
class ScalingGroupVServerGroupsState {
  /// If instances of scaling group are attached/removed from slb backend server when attach/detach vserver group from scaling group. Default to true.
  final pulumi.Input<bool>? force;
  /// ID of the scaling group.
  final pulumi.Input<String>? scalingGroupId;
  /// A list of vserver groups attached on scaling group. See `vserver_groups` below.
  final pulumi.Input<List<ScalingGroupVServerGroupsVserverGroup>>? vserverGroups;

  /// Creates a new [ScalingGroupVServerGroupsState].
  /// [force] If instances of scaling group are attached/removed from slb backend server when attach/detach vserver group from scaling group. Default to true.
  /// [scalingGroupId] ID of the scaling group.
  /// [vserverGroups] A list of vserver groups attached on scaling group. See `vserver_groups` below.
  ScalingGroupVServerGroupsState({
    this.force,
    this.scalingGroupId,
    this.vserverGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'scalingGroupId': ?scalingGroupId,
      'vserverGroups': ?pulumi.Input.mapOptionalInputValue<List<ScalingGroupVServerGroupsVserverGroup>, List<Map<String, dynamic>>>(vserverGroups, (value) => pulumi.Input.encodeList<ScalingGroupVServerGroupsVserverGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingGroupVServerGroupsState.fromMap(Map<String, dynamic> map) {
    return ScalingGroupVServerGroupsState(
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId']! as String).input(),
      vserverGroups: map['vserverGroups'] == null ? null : (pulumi.Input.decodeList<ScalingGroupVServerGroupsVserverGroup>(map['vserverGroups']!, (value) => ScalingGroupVServerGroupsVserverGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

