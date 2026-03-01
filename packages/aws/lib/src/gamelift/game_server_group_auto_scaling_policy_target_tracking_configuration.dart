// ignore_for_file: unused_element, unnecessary_cast


class GameServerGroupAutoScalingPolicyTargetTrackingConfiguration {
  /// Desired value to use with a game server group target-based scaling policy.
  final double targetValue;

  /// Creates a new [GameServerGroupAutoScalingPolicyTargetTrackingConfiguration].
  /// [targetValue] Desired value to use with a game server group target-based scaling policy.
  GameServerGroupAutoScalingPolicyTargetTrackingConfiguration({
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetValue': targetValue,
    };
  }

  factory GameServerGroupAutoScalingPolicyTargetTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return GameServerGroupAutoScalingPolicyTargetTrackingConfiguration(
      targetValue: map['targetValue'] as double,
    );
  }
}

