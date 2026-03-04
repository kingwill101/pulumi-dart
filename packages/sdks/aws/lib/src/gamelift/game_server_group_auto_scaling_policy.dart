// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_server_group_auto_scaling_policy_target_tracking_configuration.dart';

class GameServerGroupAutoScalingPolicy {
  /// Length of time, in seconds, it takes for a new instance to start
  /// new game server processes and register with GameLift FleetIQ.
  /// Specifying a warm-up time can be useful, particularly with game servers that take a long time to start up,
  /// because it avoids prematurely starting new instances. Defaults to `60`.
  final pulumi.Input<int>? estimatedInstanceWarmup;
  final pulumi.Input<
    GameServerGroupAutoScalingPolicyTargetTrackingConfiguration
  >
  targetTrackingConfiguration;

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
      'targetTrackingConfiguration':
          pulumi.Input.mapInputValue<
            GameServerGroupAutoScalingPolicyTargetTrackingConfiguration,
            Map<String, dynamic>
          >(targetTrackingConfiguration, (value) => value.toMap()),
    };
  }

  factory GameServerGroupAutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return GameServerGroupAutoScalingPolicy(
      estimatedInstanceWarmup: (() {
        final guardedValue = map['estimatedInstanceWarmup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetTrackingConfiguration: pulumi.Input.fromValue(
        GameServerGroupAutoScalingPolicyTargetTrackingConfiguration.fromMap(
          (map['targetTrackingConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
