import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_vserver_groups_args.dart';
import 'scaling_group_vserver_groups_state.dart';

/// Attaches/Detaches vserver groups to a specified scaling group.
///
/// &gt; **NOTE:** The load balancer of which vserver groups belongs to must be in `active` status.
///
/// &gt; **NOTE:** If scaling group's network type is `VPC`, the vserver groups must be in the same `VPC`.
///
/// &gt; **NOTE:** A scaling group can have at most 5 vserver groups attached by default.
///
/// &gt; **NOTE:** Vserver groups and the default group of loadbalancer share the same backend server quota.
///
/// &gt; **NOTE:** When attach vserver groups to scaling group, existing ECS instances will be added to vserver groups; Instead, ECS instances will be removed from vserver group when detach.
///
/// &gt; **NOTE:** Detach action will be executed before attach action.
///
/// &gt; **NOTE:** Vserver group is defined uniquely by `loadbalancer_id`, `vserver_group_id`, `port`.
///
/// &gt; **NOTE:** Modifing `weight` attribute means detach vserver group first and then, attach with new weight parameter.
///
/// &gt; **NOTE:** Available since v1.53.0.
///
/// ## Import
///
/// ESS vserver groups can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/scalingGroupVServerGroups:ScalingGroupVServerGroups example abc123456
/// ```
class ScalingGroupVServerGroups extends pulumi.CustomResource {
  /// If instances of scaling group are attached/removed from slb backend server when attach/detach vserver group from scaling group. Default to true.
  late final pulumi.Output<bool?> force;

  /// ID of the scaling group.
  late final pulumi.Output<String> scalingGroupId;

  /// A list of vserver groups attached on scaling group. See `vserver_groups` below.
  late final pulumi.Output<List<Map<String, dynamic>>> vserverGroups;

  /// Creates a new [ScalingGroupVServerGroups].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingGroupVServerGroups]. {@macro pulumi_ess_scaling_group_vserver_groups_scaling_group_vserver_groups_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingGroupVServerGroups(
    String name, {
    ScalingGroupVServerGroupsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingGroupVServerGroups:ScalingGroupVServerGroups',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    force = registerOutput<bool?>('force');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    vserverGroups = registerOutput<List<Map<String, dynamic>>>('vserverGroups');
  }

  /// Gets an existing [ScalingGroupVServerGroups] resource's state with the given [name] and [id].
  static ScalingGroupVServerGroups get(
    String name,
    pulumi.Input<String> id, {
    ScalingGroupVServerGroupsState? state,
  }) {
    return ScalingGroupVServerGroups._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScalingGroupVServerGroups._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/scalingGroupVServerGroups:ScalingGroupVServerGroups',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    force = registerOutput<bool?>('force');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    vserverGroups = registerOutput<List<Map<String, dynamic>>>('vserverGroups');
  }
}
