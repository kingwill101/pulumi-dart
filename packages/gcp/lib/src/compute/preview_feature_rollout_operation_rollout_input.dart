// ignore_for_file: unused_element, unnecessary_cast

class PreviewFeatureRolloutOperationRolloutInput {
  /// Predefined rollout plans.
  /// Possible values are: `ROLLOUT_PLAN_FAST_ROLLOUT`.
  final String predefinedRolloutPlan;

  /// Creates a new [PreviewFeatureRolloutOperationRolloutInput].
  /// [predefinedRolloutPlan] Predefined rollout plans.
  PreviewFeatureRolloutOperationRolloutInput({
    required this.predefinedRolloutPlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'predefinedRolloutPlan': predefinedRolloutPlan};
  }

  factory PreviewFeatureRolloutOperationRolloutInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreviewFeatureRolloutOperationRolloutInput(
      predefinedRolloutPlan: map['predefinedRolloutPlan'] as String,
    );
  }
}
