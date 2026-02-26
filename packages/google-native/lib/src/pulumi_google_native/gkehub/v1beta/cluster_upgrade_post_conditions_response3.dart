// ignore_for_file: unused_element, unnecessary_cast

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsResponse3 {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  ClusterUpgradePostConditionsResponse3({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['soaking'] = soaking;
    return map;
  }

  factory ClusterUpgradePostConditionsResponse3.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsResponse3(
      soaking: map['soaking'] as String,
    );
  }
}
