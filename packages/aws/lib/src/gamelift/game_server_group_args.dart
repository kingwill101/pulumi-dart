// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_server_group_auto_scaling_policy.dart';
import 'game_server_group_instance_definition.dart';
import 'game_server_group_launch_template.dart';

/// {@template pulumi_gamelift_game_server_group_game_server_group_args_doc}
/// The set of arguments for GameServerGroup.
/// {@endtemplate}
/// {@macro pulumi_gamelift_game_server_group_game_server_group_args_doc}
class GameServerGroupArgs {
  final pulumi.Input<GameServerGroupAutoScalingPolicy>? autoScalingPolicy;

  /// Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// Valid values: `SPOT_ONLY`, `SPOT_PREFERRED`, `ON_DEMAND_ONLY`. Defaults to `SPOT_PREFERRED`.
  final pulumi.Input<String>? balancingStrategy;

  /// Name of the game server group.
  /// This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group.
  final pulumi.Input<String> gameServerGroupName;

  /// Indicates whether instances in the game server group are protected from early termination.
  /// Unprotected instances that have active game servers running might be terminated during a scale-down event,
  /// causing players to be dropped from the game.
  /// Protected instances cannot be terminated while there are active game servers running except in the event
  /// of a forced game server group deletion.
  /// Valid values: `NO_PROTECTION`, `FULL_PROTECTION`. Defaults to `NO_PROTECTION`.
  final pulumi.Input<String>? gameServerProtectionPolicy;
  final pulumi.Input<List<GameServerGroupInstanceDefinition>>
  instanceDefinitions;
  final pulumi.Input<GameServerGroupLaunchTemplate> launchTemplate;

  /// The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
  final pulumi.Input<int> maxSize;

  /// The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum.
  final pulumi.Input<int> minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  final pulumi.Input<String> roleArn;

  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of VPC subnets to use with instances in the game server group.
  /// By default, all GameLift FleetIQ-supported Availability Zones are used.
  final pulumi.Input<List<String>>? vpcSubnets;

  /// Creates a new [GameServerGroupArgs].
  /// [autoScalingPolicy] Optional.
  /// [balancingStrategy] Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// [gameServerGroupName] Name of the game server group.
  /// [gameServerProtectionPolicy] Indicates whether instances in the game server group are protected from early termination.
  /// [instanceDefinitions] Required.
  /// [launchTemplate] Required.
  /// [maxSize] The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// [minSize] The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  /// [tags] Key-value map of resource tags
  /// [vpcSubnets] A list of VPC subnets to use with instances in the game server group.
  GameServerGroupArgs({
    GameServerGroupAutoScalingPolicy? autoScalingPolicy,
    String? balancingStrategy,
    required String gameServerGroupName,
    String? gameServerProtectionPolicy,
    required List<GameServerGroupInstanceDefinition> instanceDefinitions,
    required GameServerGroupLaunchTemplate launchTemplate,
    required int maxSize,
    required int minSize,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    List<String>? vpcSubnets,
  }) : autoScalingPolicy =
           pulumi.Input.asOptionalInput<GameServerGroupAutoScalingPolicy>(
             autoScalingPolicy,
           ),
       balancingStrategy = pulumi.Input.asOptionalInput<String>(
         balancingStrategy,
       ),
       gameServerGroupName = pulumi.Input.asInput<String>(gameServerGroupName),
       gameServerProtectionPolicy = pulumi.Input.asOptionalInput<String>(
         gameServerProtectionPolicy,
       ),
       instanceDefinitions =
           pulumi.Input.asInput<List<GameServerGroupInstanceDefinition>>(
             instanceDefinitions,
           ),
       launchTemplate = pulumi.Input.asInput<GameServerGroupLaunchTemplate>(
         launchTemplate,
       ),
       maxSize = pulumi.Input.asInput<int>(maxSize),
       minSize = pulumi.Input.asInput<int>(minSize),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcSubnets = pulumi.Input.asOptionalInput<List<String>>(vpcSubnets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GameServerGroupAutoScalingPolicy,
            Map<String, dynamic>
          >(autoScalingPolicy, (value) => value.toMap()),
      'balancingStrategy': ?balancingStrategy,
      'gameServerGroupName': gameServerGroupName,
      'gameServerProtectionPolicy': ?gameServerProtectionPolicy,
      'instanceDefinitions':
          pulumi.Input.mapInputValue<
            List<GameServerGroupInstanceDefinition>,
            List<Map<String, dynamic>>
          >(
            instanceDefinitions,
            (value) =>
                pulumi.Input.encodeList<
                  GameServerGroupInstanceDefinition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'launchTemplate':
          pulumi.Input.mapInputValue<
            GameServerGroupLaunchTemplate,
            Map<String, dynamic>
          >(launchTemplate, (value) => value.toMap()),
      'maxSize': maxSize,
      'minSize': minSize,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'vpcSubnets': ?vpcSubnets,
    };
  }

  factory GameServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GameServerGroupArgs(
      autoScalingPolicy: map['autoScalingPolicy'] == null
          ? null
          : GameServerGroupAutoScalingPolicy.fromMap(
              (map['autoScalingPolicy'] as Map).cast<String, dynamic>(),
            ),
      balancingStrategy: map['balancingStrategy'] == null
          ? null
          : map['balancingStrategy'] as String,
      gameServerGroupName: map['gameServerGroupName'] as String,
      gameServerProtectionPolicy: map['gameServerProtectionPolicy'] == null
          ? null
          : map['gameServerProtectionPolicy'] as String,
      instanceDefinitions:
          pulumi.Input.decodeList<GameServerGroupInstanceDefinition>(
            map['instanceDefinitions'],
            (value) => GameServerGroupInstanceDefinition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      launchTemplate: GameServerGroupLaunchTemplate.fromMap(
        (map['launchTemplate'] as Map).cast<String, dynamic>(),
      ),
      maxSize: map['maxSize'] as int,
      minSize: map['minSize'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcSubnets: map['vpcSubnets'] == null
          ? null
          : (map['vpcSubnets'] as List).cast<String>(),
    );
  }
}
