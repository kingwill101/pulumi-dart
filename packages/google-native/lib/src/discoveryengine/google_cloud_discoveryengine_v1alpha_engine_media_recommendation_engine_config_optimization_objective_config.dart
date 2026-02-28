// ignore_for_file: unused_element, unnecessary_cast

/// Custom threshold for `cvr` optimization_objective.
class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig {
  /// The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  final String targetField;

  /// The threshold to be applied to the target (e.g., 0.5).
  final double targetFieldValueFloat;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig].
  /// [targetField] The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  /// [targetFieldValueFloat] The threshold to be applied to the target (e.g., 0.5).
  GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig({
    required this.targetField,
    required this.targetFieldValueFloat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetField'] = targetField;
    map['targetFieldValueFloat'] = targetFieldValueFloat;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig(
      targetField: map['targetField'] as String,
      targetFieldValueFloat: map['targetFieldValueFloat'] as double,
    );
  }
}
