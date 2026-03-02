// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_server_group_auto_scaling_policy.dart';
import 'game_server_group_instance_definition.dart';
import 'game_server_group_launch_template.dart';

/// Input properties used for looking up and filtering GameServerGroup resources.
class GameServerGroupState {
  /// The ARN of the GameLift Game Server Group.
  final pulumi.Input<String>? arn;
  /// The ARN of the created EC2 Auto Scaling group.
  final pulumi.Input<String>? autoScalingGroupArn;
  final pulumi.Input<GameServerGroupAutoScalingPolicy>? autoScalingPolicy;
  /// Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// Valid values: `SPOT_ONLY`, `SPOT_PREFERRED`, `ON_DEMAND_ONLY`. Defaults to `SPOT_PREFERRED`.
  final pulumi.Input<String>? balancingStrategy;
  /// Name of the game server group.
  /// This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group.
  final pulumi.Input<String>? gameServerGroupName;
  /// Indicates whether instances in the game server group are protected from early termination.
  /// Unprotected instances that have active game servers running might be terminated during a scale-down event,
  /// causing players to be dropped from the game.
  /// Protected instances cannot be terminated while there are active game servers running except in the event
  /// of a forced game server group deletion.
  /// Valid values: `NO_PROTECTION`, `FULL_PROTECTION`. Defaults to `NO_PROTECTION`.
  final pulumi.Input<String>? gameServerProtectionPolicy;
  final pulumi.Input<List<GameServerGroupInstanceDefinition>>? instanceDefinitions;
  final pulumi.Input<GameServerGroupLaunchTemplate>? launchTemplate;
  /// The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
  final pulumi.Input<int>? maxSize;
  /// The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum.
  final pulumi.Input<int>? minSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A list of VPC subnets to use with instances in the game server group.
  /// By default, all GameLift FleetIQ-supported Availability Zones are used.
  final pulumi.Input<List<String>>? vpcSubnets;

  /// Creates a new [GameServerGroupState].
  /// [arn] The ARN of the GameLift Game Server Group.
  /// [autoScalingGroupArn] The ARN of the created EC2 Auto Scaling group.
  /// [autoScalingPolicy] Optional.
  /// [balancingStrategy] Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// [gameServerGroupName] Name of the game server group.
  /// [gameServerProtectionPolicy] Indicates whether instances in the game server group are protected from early termination.
  /// [instanceDefinitions] Optional.
  /// [launchTemplate] Optional.
  /// [maxSize] The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// [minSize] The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  /// [tags] Key-value map of resource tags
  /// [tagsAll] Optional.
  /// [vpcSubnets] A list of VPC subnets to use with instances in the game server group.
  GameServerGroupState({
    this.arn,
    this.autoScalingGroupArn,
    this.autoScalingPolicy,
    this.balancingStrategy,
    this.gameServerGroupName,
    this.gameServerProtectionPolicy,
    this.instanceDefinitions,
    this.launchTemplate,
    this.maxSize,
    this.minSize,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.vpcSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoScalingGroupArn': ?autoScalingGroupArn,
      'autoScalingPolicy': ?pulumi.Input.mapOptionalInputValue<GameServerGroupAutoScalingPolicy, Map<String, dynamic>>(autoScalingPolicy, (value) => value.toMap()),
      'balancingStrategy': ?balancingStrategy,
      'gameServerGroupName': ?gameServerGroupName,
      'gameServerProtectionPolicy': ?gameServerProtectionPolicy,
      'instanceDefinitions': ?pulumi.Input.mapOptionalInputValue<List<GameServerGroupInstanceDefinition>, List<Map<String, dynamic>>>(instanceDefinitions, (value) => pulumi.Input.encodeList<GameServerGroupInstanceDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<GameServerGroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcSubnets': ?vpcSubnets,
    };
  }

  factory GameServerGroupState.fromMap(Map<String, dynamic> map) {
    return GameServerGroupState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoScalingGroupArn: map['autoScalingGroupArn'] == null ? null : ((map['autoScalingGroupArn'] as String).input()).input(),
      autoScalingPolicy: map['autoScalingPolicy'] == null ? null : ((GameServerGroupAutoScalingPolicy.fromMap((map['autoScalingPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      balancingStrategy: map['balancingStrategy'] == null ? null : ((map['balancingStrategy'] as String).input()).input(),
      gameServerGroupName: map['gameServerGroupName'] == null ? null : ((map['gameServerGroupName'] as String).input()).input(),
      gameServerProtectionPolicy: map['gameServerProtectionPolicy'] == null ? null : ((map['gameServerProtectionPolicy'] as String).input()).input(),
      instanceDefinitions: map['instanceDefinitions'] == null ? null : ((pulumi.Input.decodeList<GameServerGroupInstanceDefinition>(map['instanceDefinitions']!, (value) => GameServerGroupInstanceDefinition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      launchTemplate: map['launchTemplate'] == null ? null : ((GameServerGroupLaunchTemplate.fromMap((map['launchTemplate']! as Map).cast<String, dynamic>())).input()).input(),
      maxSize: map['maxSize'] == null ? null : ((map['maxSize'] as int).input()).input(),
      minSize: map['minSize'] == null ? null : ((map['minSize'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcSubnets: map['vpcSubnets'] == null ? null : (((map['vpcSubnets'] as List).cast<String>()).input()).input(),
    );
  }
}

