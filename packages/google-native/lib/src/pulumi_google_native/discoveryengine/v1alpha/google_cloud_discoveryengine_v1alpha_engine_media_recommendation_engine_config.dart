// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_optimization_objective_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_training_state.dart';

/// Additional config specs for a Media Recommendation engine.
class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig {
  /// The optimization objective e.g. `cvr`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `ctr`, `cvr`. If not specified, we choose default based on engine type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr`
  final String? optimizationObjective;

  /// Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-time`, target_field_value must be an integer value indicating the media progress time in seconds between (0, 86400] (excludes 0, includes 86400) (e.g., 90). For target_field `watch-percentage`, the target_field_value must be a valid float value between (0, 1.0] (excludes 0, includes 1.0) (e.g., 0.5).
  final GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig?
      optimizationObjectiveConfig;

  /// The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train engine in order to control cost. If not specified: the default value for `CreateEngine` method is `TRAINING`. The default value for `UpdateEngine` method is to keep the state the same as before.
  final GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState?
      trainingState;

  /// The type of engine e.g. `recommended-for-you`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `recommended-for-you`, `others-you-may-like`, `more-like-this`, `most-popular-items`.
  final String type;

  GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig({
    this.optimizationObjective,
    this.optimizationObjectiveConfig,
    this.trainingState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optimizationObjectiveValue = optimizationObjective;
    if (optimizationObjectiveValue != null) {
      map['optimizationObjective'] = optimizationObjectiveValue;
    }
    final optimizationObjectiveConfigValue = optimizationObjectiveConfig;
    if (optimizationObjectiveConfigValue != null) {
      map['optimizationObjectiveConfig'] =
          optimizationObjectiveConfigValue.toMap();
    }
    final trainingStateValue = trainingState;
    if (trainingStateValue != null) {
      map['trainingState'] = trainingStateValue.value;
    }
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig(
      optimizationObjective: map['optimizationObjective'] == null
          ? null
          : map['optimizationObjective'] as String,
      optimizationObjectiveConfig: map['optimizationObjectiveConfig'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
              .fromMap((map['optimizationObjectiveConfig'] as Map)
                  .cast<String, dynamic>()),
      trainingState: map['trainingState'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState
              .fromValue(map['trainingState'] as String),
      type: map['type'] as String,
    );
  }
}
