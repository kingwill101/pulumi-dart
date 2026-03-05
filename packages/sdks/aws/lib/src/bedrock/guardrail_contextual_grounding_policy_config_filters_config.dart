// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailContextualGroundingPolicyConfigFiltersConfig {
  /// The threshold for this filter.
  final pulumi.Input<double> threshold;
  /// Type of contextual grounding filter.
  final pulumi.Input<String> type;

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
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

