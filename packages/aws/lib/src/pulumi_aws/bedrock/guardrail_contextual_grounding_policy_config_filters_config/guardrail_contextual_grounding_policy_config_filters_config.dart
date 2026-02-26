// ignore_for_file: unused_element, unnecessary_cast

class GuardrailContextualGroundingPolicyConfigFiltersConfig {
  /// The threshold for this filter.
  final double threshold;

  /// Type of contextual grounding filter.
  final String type;

  GuardrailContextualGroundingPolicyConfigFiltersConfig({
    required this.threshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threshold'] = threshold;
    map['type'] = type;
    return map;
  }

  factory GuardrailContextualGroundingPolicyConfigFiltersConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailContextualGroundingPolicyConfigFiltersConfig(
      threshold: map['threshold'] as double,
      type: map['type'] as String,
    );
  }
}
