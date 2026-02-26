// ignore_for_file: unused_element, unnecessary_cast

import '../game_server_group_auto_scaling_policy_target_tracking_configuration/game_server_group_auto_scaling_policy_target_tracking_configuration.dart';

class GameServerGroupAutoScalingPolicy {
  /// Length of time, in seconds, it takes for a new instance to start
  /// new game server processes and register with GameLift FleetIQ.
  /// Specifying a warm-up time can be useful, particularly with game servers that take a long time to start up,
  /// because it avoids prematurely starting new instances. Defaults to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int? estimatedInstanceWarmup;
  final GameServerGroupAutoScalingPolicyTargetTrackingConfiguration
      targetTrackingConfiguration;

  GameServerGroupAutoScalingPolicy({
    this.estimatedInstanceWarmup,
    required this.targetTrackingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final estimatedInstanceWarmupValue = estimatedInstanceWarmup;
    if (estimatedInstanceWarmupValue != null) {
      map['estimatedInstanceWarmup'] = estimatedInstanceWarmupValue;
    }
    map['targetTrackingConfiguration'] = targetTrackingConfiguration.toMap();
    return map;
  }

  factory GameServerGroupAutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return GameServerGroupAutoScalingPolicy(
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null
          ? null
          : map['estimatedInstanceWarmup'] as int,
      targetTrackingConfiguration:
          GameServerGroupAutoScalingPolicyTargetTrackingConfiguration.fromMap(
              (map['targetTrackingConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
