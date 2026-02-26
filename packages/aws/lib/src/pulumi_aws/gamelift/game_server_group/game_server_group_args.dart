// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../game_server_group_auto_scaling_policy/game_server_group_auto_scaling_policy.dart';
import '../game_server_group_instance_definition/game_server_group_instance_definition.dart';
import '../game_server_group_launch_template/game_server_group_launch_template.dart';

/// The set of arguments for GameServerGroup.
class GameServerGroupArgs {
  final Input<GameServerGroupAutoScalingPolicy>? autoScalingPolicy;

  /// Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// Valid values: `SPOT_ONLY`, `SPOT_PREFERRED`, `ON_DEMAND_ONLY`. Defaults to `SPOT_PREFERRED`.
  final Input<String>? balancingStrategy;

  /// Name of the game server group.
  /// This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group.
  final Input<String> gameServerGroupName;

  /// Indicates whether instances in the game server group are protected from early termination.
  /// Unprotected instances that have active game servers running might be terminated during a scale-down event,
  /// causing players to be dropped from the game.
  /// Protected instances cannot be terminated while there are active game servers running except in the event
  /// of a forced game server group deletion.
  /// Valid values: `NO_PROTECTION`, `FULL_PROTECTION`. Defaults to `NO_PROTECTION`.
  final Input<String>? gameServerProtectionPolicy;
  final Input<List<GameServerGroupInstanceDefinition>> instanceDefinitions;
  final Input<GameServerGroupLaunchTemplate> launchTemplate;

  /// The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
  final Input<int> maxSize;

  /// The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum.
  final Input<int> minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  final Input<String> roleArn;

  /// Key-value map of resource tags
  final Input<Map<String, String>>? tags;

  /// A list of VPC subnets to use with instances in the game server group.
  /// By default, all GameLift FleetIQ-supported Availability Zones are used.
  final Input<List<String>>? vpcSubnets;

  GameServerGroupArgs({
    this.autoScalingPolicy,
    this.balancingStrategy,
    required this.gameServerGroupName,
    this.gameServerProtectionPolicy,
    required this.instanceDefinitions,
    required this.launchTemplate,
    required this.maxSize,
    required this.minSize,
    this.region,
    required this.roleArn,
    this.tags,
    this.vpcSubnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoScalingPolicyValue = autoScalingPolicy;
    if (autoScalingPolicyValue != null) {
      map['autoScalingPolicy'] = Input.mapOptionalInputValue<
              GameServerGroupAutoScalingPolicy, Map<String, dynamic>>(
          autoScalingPolicyValue, (value) => value.toMap());
    }
    final balancingStrategyValue = balancingStrategy;
    if (balancingStrategyValue != null) {
      map['balancingStrategy'] = balancingStrategyValue;
    }
    map['gameServerGroupName'] = gameServerGroupName;
    final gameServerProtectionPolicyValue = gameServerProtectionPolicy;
    if (gameServerProtectionPolicyValue != null) {
      map['gameServerProtectionPolicy'] = gameServerProtectionPolicyValue;
    }
    map['instanceDefinitions'] = Input.mapInputValue<
            List<GameServerGroupInstanceDefinition>,
            List<Map<String, dynamic>>>(
        instanceDefinitions,
        (value) => Input.encodeList<GameServerGroupInstanceDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['launchTemplate'] = Input.mapInputValue<GameServerGroupLaunchTemplate,
        Map<String, dynamic>>(launchTemplate, (value) => value.toMap());
    map['maxSize'] = maxSize;
    map['minSize'] = minSize;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcSubnetsValue = vpcSubnets;
    if (vpcSubnetsValue != null) {
      map['vpcSubnets'] = vpcSubnetsValue;
    }
    return map;
  }

  factory GameServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GameServerGroupArgs(
      autoScalingPolicy:
          Input.asOptionalInput<GameServerGroupAutoScalingPolicy>(
              map['autoScalingPolicy']),
      balancingStrategy:
          Input.asOptionalInput<String>(map['balancingStrategy']),
      gameServerGroupName: Input.asInput<String>(map['gameServerGroupName']),
      gameServerProtectionPolicy:
          Input.asOptionalInput<String>(map['gameServerProtectionPolicy']),
      instanceDefinitions:
          Input.asInput<List<GameServerGroupInstanceDefinition>>(
              map['instanceDefinitions']),
      launchTemplate:
          Input.asInput<GameServerGroupLaunchTemplate>(map['launchTemplate']),
      maxSize: Input.asInput<int>(map['maxSize']),
      minSize: Input.asInput<int>(map['minSize']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSubnets: Input.asOptionalInput<List<String>>(map['vpcSubnets']),
    );
  }
}
