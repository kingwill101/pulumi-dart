// ignore_for_file: unused_element, unnecessary_cast

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditions {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  /// Creates a new [ClusterUpgradePostConditions].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  ClusterUpgradePostConditions({required this.soaking});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'soaking': soaking};
  }

  factory ClusterUpgradePostConditions.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePostConditions(soaking: map['soaking'] as String);
  }
}
