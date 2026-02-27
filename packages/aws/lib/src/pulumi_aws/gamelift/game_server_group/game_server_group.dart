import 'package:pulumi/pulumi.dart';
import '../game_server_group_auto_scaling_policy/game_server_group_auto_scaling_policy.dart';
import '../game_server_group_instance_definition/game_server_group_instance_definition.dart';
import '../game_server_group_launch_template/game_server_group_launch_template.dart';
import 'game_server_group_args.dart';

/// Provides an GameLift Game Server Group resource.
///
/// ## Example Usage
///
///
///
/// Full usage:
///
///
///
/// ### Example IAM Role for GameLift Game Server Group
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Game Server Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/gameServerGroup:GameServerGroup example example
/// ```
class GameServerGroup extends CustomResource {
  /// The ARN of the GameLift Game Server Group.
  late final Output<String> arn;

  /// The ARN of the created EC2 Auto Scaling group.
  late final Output<String> autoScalingGroupArn;
  late final Output<GameServerGroupAutoScalingPolicy?> autoScalingPolicy;

  /// Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// Valid values: `SPOT_ONLY`, `SPOT_PREFERRED`, `ON_DEMAND_ONLY`. Defaults to `SPOT_PREFERRED`.
  late final Output<String> balancingStrategy;

  /// Name of the game server group.
  /// This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group.
  late final Output<String> gameServerGroupName;

  /// Indicates whether instances in the game server group are protected from early termination.
  /// Unprotected instances that have active game servers running might be terminated during a scale-down event,
  /// causing players to be dropped from the game.
  /// Protected instances cannot be terminated while there are active game servers running except in the event
  /// of a forced game server group deletion.
  /// Valid values: `NO_PROTECTION`, `FULL_PROTECTION`. Defaults to `NO_PROTECTION`.
  late final Output<String> gameServerProtectionPolicy;
  late final Output<List<GameServerGroupInstanceDefinition>>
      instanceDefinitions;
  late final Output<GameServerGroupLaunchTemplate> launchTemplate;

  /// The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
  late final Output<int> maxSize;

  /// The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum.
  late final Output<int> minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  late final Output<String> roleArn;

  /// Key-value map of resource tags
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// A list of VPC subnets to use with instances in the game server group.
  /// By default, all GameLift FleetIQ-supported Availability Zones are used.
  late final Output<List<String>?> vpcSubnets;

  GameServerGroup(
    String name, {
    GameServerGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameServerGroup:GameServerGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingGroupArn = registerOutput<String>('autoScalingGroupArn');
    this.autoScalingPolicy =
        registerOutput<GameServerGroupAutoScalingPolicy?>('autoScalingPolicy');
    this.balancingStrategy = registerOutput<String>('balancingStrategy');
    this.gameServerGroupName = registerOutput<String>('gameServerGroupName');
    this.gameServerProtectionPolicy =
        registerOutput<String>('gameServerProtectionPolicy');
    this.instanceDefinitions =
        registerOutput<List<GameServerGroupInstanceDefinition>>(
            'instanceDefinitions');
    this.launchTemplate =
        registerOutput<GameServerGroupLaunchTemplate>('launchTemplate');
    this.maxSize = registerOutput<int>('maxSize');
    this.minSize = registerOutput<int>('minSize');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSubnets = registerOutput<List<String>?>('vpcSubnets');
  }
}
