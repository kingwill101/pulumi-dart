// ignore_for_file: unused_element, unnecessary_cast

import 'recommendation_engine_media_recommendation_engine_config_engine_features_config.dart';
import 'recommendation_engine_media_recommendation_engine_config_optimization_objective_config.dart';

class RecommendationEngineMediaRecommendationEngineConfig {
  /// More feature configs of the selected engine type.
  /// Structure is documented below.
  final RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig?
  engineFeaturesConfig;

  /// The optimization objective. e.g., `cvr`.
  /// This field together with MediaRecommendationEngineConfig.type describes
  /// engine metadata to use to control engine training and serving.
  /// Currently supported values: `ctr`, `cvr`.
  /// If not specified, we choose default based on engine type. Default depends on type of recommendation:
  /// `recommended-for-you` => `ctr`
  /// `others-you-may-like` => `ctr`
  final String? optimizationObjective;

  /// Name and value of the custom threshold for cvr optimization_objective.
  /// For target_field `watch-time`, target_field_value must be an integer
  /// value indicating the media progress time in seconds between (0, 86400]
  /// (excludes 0, includes 86400) (e.g., 90).
  /// For target_field `watch-percentage`, the target_field_value must be a
  /// valid float value between (0, 1.0] (excludes 0, includes 1.0) (e.g., 0.5).
  /// Structure is documented below.
  final RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig?
  optimizationObjectiveConfig;

  /// The training state that the engine is in (e.g. `TRAINING` or `PAUSED`).
  /// Since part of the cost of running the service
  /// is frequency of training - this can be used to determine when to train
  /// engine in order to control cost. If not specified: the default value for
  /// `CreateEngine` method is `TRAINING`. The default value for
  /// `UpdateEngine` method is to keep the state the same as before.
  /// Possible values are: `PAUSED`, `TRAINING`.
  final String? trainingState;

  /// The type of engine. e.g., `recommended-for-you`.
  /// This field together with MediaRecommendationEngineConfig.optimizationObjective describes
  /// engine metadata to use to control engine training and serving.
  /// Currently supported values: `recommended-for-you`, `others-you-may-like`,
  /// `more-like-this`, `most-popular-items`.
  final String? type;

  /// Creates a new [RecommendationEngineMediaRecommendationEngineConfig].
  /// [engineFeaturesConfig] More feature configs of the selected engine type.
  /// [optimizationObjective] The optimization objective. e.g., `cvr`.
  /// [optimizationObjectiveConfig] Name and value of the custom threshold for cvr optimization_objective.
  /// [trainingState] The training state that the engine is in (e.g. `TRAINING` or `PAUSED`).
  /// [type] The type of engine. e.g., `recommended-for-you`.
  RecommendationEngineMediaRecommendationEngineConfig({
    this.engineFeaturesConfig,
    this.optimizationObjective,
    this.optimizationObjectiveConfig,
    this.trainingState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineFeaturesConfig': ?engineFeaturesConfig == null
          ? null
          : engineFeaturesConfig!.toMap(),
      'optimizationObjective': ?optimizationObjective,
      'optimizationObjectiveConfig': ?optimizationObjectiveConfig == null
          ? null
          : optimizationObjectiveConfig!.toMap(),
      'trainingState': ?trainingState,
      'type': ?type,
    };
  }

  factory RecommendationEngineMediaRecommendationEngineConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecommendationEngineMediaRecommendationEngineConfig(
      engineFeaturesConfig: map['engineFeaturesConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig.fromMap(
              (map['engineFeaturesConfig'] as Map).cast<String, dynamic>(),
            ),
      optimizationObjective: map['optimizationObjective'] == null
          ? null
          : map['optimizationObjective'] as String,
      optimizationObjectiveConfig: map['optimizationObjectiveConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap(
              (map['optimizationObjectiveConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      trainingState: map['trainingState'] == null
          ? null
          : map['trainingState'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
