// ignore_for_file: unused_element, unnecessary_cast

import 'game_server_group_auto_scaling_policy_target_tracking_configuration.dart';

class GameServerGroupAutoScalingPolicy {
  /// Length of time, in seconds, it takes for a new instance to start
  /// new game server processes and register with GameLift FleetIQ.
  /// Specifying a warm-up time can be useful, particularly with game servers that take a long time to start up,
  /// because it avoids prematurely starting new instances. Defaults to `60`.
  final int? estimatedInstanceWarmup;
  final GameServerGroupAutoScalingPolicyTargetTrackingConfiguration targetTrackingConfiguration;

  /// Creates a new [GameServerGroupAutoScalingPolicy].
  /// [estimatedInstanceWarmup] Length of time, in seconds, it takes for a new instance to start
  /// [targetTrackingConfiguration] Required.
  GameServerGroupAutoScalingPolicy({
    this.estimatedInstanceWarmup,
    required this.targetTrackingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'targetTrackingConfiguration': targetTrackingConfiguration.toMap(),
    };
  }

  factory GameServerGroupAutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return GameServerGroupAutoScalingPolicy(
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null ? null : map['estimatedInstanceWarmup'] as int,
      targetTrackingConfiguration: GameServerGroupAutoScalingPolicyTargetTrackingConfiguration.fromMap((map['targetTrackingConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

