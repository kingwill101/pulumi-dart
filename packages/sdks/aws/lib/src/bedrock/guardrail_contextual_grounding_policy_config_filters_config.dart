// ignore_for_file: unused_element, unnecessary_cast


class GuardrailContextualGroundingPolicyConfigFiltersConfig {
  /// The threshold for this filter.
  final double threshold;
  /// Type of contextual grounding filter.
  final String type;

  /// Creates a new [GuardrailContextualGroundingPolicyConfigFiltersConfig].
  /// [threshold] The threshold for this filter.
  /// [type] Type of contextual grounding filter.
  GuardrailContextualGroundingPolicyConfigFiltersConfig({
    required this.threshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
      'type': type,
    };
  }

  factory GuardrailContextualGroundingPolicyConfigFiltersConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContextualGroundingPolicyConfigFiltersConfig(
      threshold: map['threshold'] as double,
      type: map['type'] as String,
    );
  }
}

