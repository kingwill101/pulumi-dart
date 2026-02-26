// ignore_for_file: unused_element, unnecessary_cast

class FeatureSpecClusterupgradePostConditions {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  final String soaking;

  FeatureSpecClusterupgradePostConditions({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['soaking'] = soaking;
    return map;
  }

  factory FeatureSpecClusterupgradePostConditions.fromMap(
      Map<String, dynamic> map) {
    return FeatureSpecClusterupgradePostConditions(
      soaking: map['soaking'] as String,
    );
  }
}
