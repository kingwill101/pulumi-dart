// ignore_for_file: unused_element, unnecessary_cast

class RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig {
  /// The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  final String? targetField;

  /// The threshold to be applied to the target (e.g., 0.5).
  final double? targetFieldValueFloat;

  RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig({
    this.targetField,
    this.targetFieldValueFloat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetFieldValue = targetField;
    if (targetFieldValue != null) {
      map['targetField'] = targetFieldValue;
    }
    final targetFieldValueFloatValue = targetFieldValueFloat;
    if (targetFieldValueFloatValue != null) {
      map['targetFieldValueFloat'] = targetFieldValueFloatValue;
    }
    return map;
  }

  factory RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap(
      Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig(
      targetField:
          map['targetField'] == null ? null : map['targetField'] as String,
      targetFieldValueFloat: map['targetFieldValueFloat'] == null
          ? null
          : map['targetFieldValueFloat'] as double,
    );
  }
}
