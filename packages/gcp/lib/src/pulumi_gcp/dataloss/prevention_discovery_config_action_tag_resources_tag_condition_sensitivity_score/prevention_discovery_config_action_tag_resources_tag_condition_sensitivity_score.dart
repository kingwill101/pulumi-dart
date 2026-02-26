// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`, `SENSITIVITY_UNKNOWN`.
  final String score;

  PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['score'] = score;
    return map;
  }

  factory PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore(
      score: map['score'] as String,
    );
  }
}
