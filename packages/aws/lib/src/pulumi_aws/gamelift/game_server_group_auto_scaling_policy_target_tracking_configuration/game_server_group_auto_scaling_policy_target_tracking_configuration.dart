// ignore_for_file: unused_element, unnecessary_cast

class GameServerGroupAutoScalingPolicyTargetTrackingConfiguration {
  /// Desired value to use with a game server group target-based scaling policy.
  final double targetValue;

  GameServerGroupAutoScalingPolicyTargetTrackingConfiguration({
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetValue'] = targetValue;
    return map;
  }

  factory GameServerGroupAutoScalingPolicyTargetTrackingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GameServerGroupAutoScalingPolicyTargetTrackingConfiguration(
      targetValue: map['targetValue'] as double,
    );
  }
}
