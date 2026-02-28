// ignore_for_file: unused_element, unnecessary_cast

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsResponseGkehubV1alpha {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  /// Creates a new [ClusterUpgradePostConditionsResponseGkehubV1alpha].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  ClusterUpgradePostConditionsResponseGkehubV1alpha({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['soaking'] = soaking;
    return map;
  }

  factory ClusterUpgradePostConditionsResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsResponseGkehubV1alpha(
      soaking: map['soaking'] as String,
    );
  }
}
