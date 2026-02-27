// ignore_for_file: unused_element, unnecessary_cast

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsGkehubV1alpha {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  ClusterUpgradePostConditionsGkehubV1alpha({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['soaking'] = soaking;
    return map;
  }

  factory ClusterUpgradePostConditionsGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsGkehubV1alpha(
      soaking: map['soaking'] as String,
    );
  }
}
