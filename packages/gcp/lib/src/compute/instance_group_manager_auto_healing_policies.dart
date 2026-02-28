// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerAutoHealingPolicies {
  /// The health check resource that signals autohealing.
  final String healthCheck;

  /// The number of seconds that the managed instance group waits before
  /// it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
  final int initialDelaySec;

  /// Creates a new [InstanceGroupManagerAutoHealingPolicies].
  /// [healthCheck] The health check resource that signals autohealing.
  /// [initialDelaySec] The number of seconds that the managed instance group waits before
  InstanceGroupManagerAutoHealingPolicies({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheck'] = healthCheck;
    map['initialDelaySec'] = initialDelaySec;
    return map;
  }

  factory InstanceGroupManagerAutoHealingPolicies.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAutoHealingPolicies(
      healthCheck: map['healthCheck'] as String,
      initialDelaySec: map['initialDelaySec'] as int,
    );
  }
}
