// ignore_for_file: unused_element, unnecessary_cast

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsResponse {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  /// Creates a new [ClusterUpgradePostConditionsResponse].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  ClusterUpgradePostConditionsResponse({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['soaking'] = soaking;
    return map;
  }

  factory ClusterUpgradePostConditionsResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsResponse(
      soaking: map['soaking'] as String,
    );
  }
}
