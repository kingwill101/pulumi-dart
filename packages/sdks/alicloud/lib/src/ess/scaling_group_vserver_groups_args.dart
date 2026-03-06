// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_vserver_groups_vserver_group.dart';

/// {@template pulumi_ess_scaling_group_vserver_groups_scaling_group_vserver_groups_args_doc}
/// The set of arguments for ScalingGroupVServerGroups.
/// {@endtemplate}
/// {@macro pulumi_ess_scaling_group_vserver_groups_scaling_group_vserver_groups_args_doc}
class ScalingGroupVServerGroupsArgs {
  /// If instances of scaling group are attached/removed from slb backend server when attach/detach vserver group from scaling group. Default to true.
  final pulumi.Input<bool>? force;
  /// ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;
  /// A list of vserver groups attached on scaling group. See `vserver_groups` below.
  final pulumi.Input<List<ScalingGroupVServerGroupsVserverGroup>> vserverGroups;

  /// Creates a new [ScalingGroupVServerGroupsArgs].
  /// [force] If instances of scaling group are attached/removed from slb backend server when attach/detach vserver group from scaling group. Default to true.
  /// [scalingGroupId] ID of the scaling group.
  /// [vserverGroups] A list of vserver groups attached on scaling group. See `vserver_groups` below.
  const ScalingGroupVServerGroupsArgs({
    this.force,
    required this.scalingGroupId,
    required this.vserverGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'scalingGroupId': scalingGroupId,
      'vserverGroups': pulumi.Input.mapInputValue<List<ScalingGroupVServerGroupsVserverGroup>, List<Map<String, dynamic>>>(vserverGroups, (value) => pulumi.Input.encodeList<ScalingGroupVServerGroupsVserverGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingGroupVServerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return ScalingGroupVServerGroupsArgs(
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      vserverGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ScalingGroupVServerGroupsVserverGroup>(map['vserverGroups']!, (value) => ScalingGroupVServerGroupsVserverGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

