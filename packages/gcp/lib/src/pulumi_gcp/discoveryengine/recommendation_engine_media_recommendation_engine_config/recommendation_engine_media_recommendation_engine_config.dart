// ignore_for_file: unused_element, unnecessary_cast

import '../recommendation_engine_media_recommendation_engine_config_engine_features_config/recommendation_engine_media_recommendation_engine_config_engine_features_config.dart';
import '../recommendation_engine_media_recommendation_engine_config_optimization_objective_config/recommendation_engine_media_recommendation_engine_config_optimization_objective_config.dart';

class RecommendationEngineMediaRecommendationEngineConfig {
  /// More feature configs of the selected engine type.
  /// Structure is documented below.
  final RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig?
      engineFeaturesConfig;

  /// The optimization objective. e.g., <span pulumi-lang-nodejs="`cvr`" pulumi-lang-dotnet="`Cvr`" pulumi-lang-go="`cvr`" pulumi-lang-python="`cvr`" pulumi-lang-yaml="`cvr`" pulumi-lang-java="`cvr`">`cvr`</span>.
  /// This field together with MediaRecommendationEngineConfig.type describes
  /// engine metadata to use to control engine training and serving.
  /// Currently supported values: <span pulumi-lang-nodejs="`ctr`" pulumi-lang-dotnet="`Ctr`" pulumi-lang-go="`ctr`" pulumi-lang-python="`ctr`" pulumi-lang-yaml="`ctr`" pulumi-lang-java="`ctr`">`ctr`</span>, <span pulumi-lang-nodejs="`cvr`" pulumi-lang-dotnet="`Cvr`" pulumi-lang-go="`cvr`" pulumi-lang-python="`cvr`" pulumi-lang-yaml="`cvr`" pulumi-lang-java="`cvr`">`cvr`</span>.
  /// If not specified, we choose default based on engine type. Default depends on type of recommendation:
  /// `recommended-for-you` => <span pulumi-lang-nodejs="`ctr`" pulumi-lang-dotnet="`Ctr`" pulumi-lang-go="`ctr`" pulumi-lang-python="`ctr`" pulumi-lang-yaml="`ctr`" pulumi-lang-java="`ctr`">`ctr`</span>
  /// `others-you-may-like` => <span pulumi-lang-nodejs="`ctr`" pulumi-lang-dotnet="`Ctr`" pulumi-lang-go="`ctr`" pulumi-lang-python="`ctr`" pulumi-lang-yaml="`ctr`" pulumi-lang-java="`ctr`">`ctr`</span>
  final String? optimizationObjective;

  /// Name and value of the custom threshold for cvr optimization_objective.
  /// For<span pulumi-lang-nodejs=" targetField " pulumi-lang-dotnet=" TargetField " pulumi-lang-go=" targetField " pulumi-lang-python=" target_field " pulumi-lang-yaml=" targetField " pulumi-lang-java=" targetField "> target_field </span>`watch-time`,<span pulumi-lang-nodejs=" targetFieldValue " pulumi-lang-dotnet=" TargetFieldValue " pulumi-lang-go=" targetFieldValue " pulumi-lang-python=" target_field_value " pulumi-lang-yaml=" targetFieldValue " pulumi-lang-java=" targetFieldValue "> target_field_value </span>must be an integer
  /// value indicating the media progress time in seconds between (0, 86400]
  /// (excludes 0, includes 86400) (e.g., 90).
  /// For<span pulumi-lang-nodejs=" targetField " pulumi-lang-dotnet=" TargetField " pulumi-lang-go=" targetField " pulumi-lang-python=" target_field " pulumi-lang-yaml=" targetField " pulumi-lang-java=" targetField "> target_field </span>`watch-percentage`, the<span pulumi-lang-nodejs=" targetFieldValue " pulumi-lang-dotnet=" TargetFieldValue " pulumi-lang-go=" targetFieldValue " pulumi-lang-python=" target_field_value " pulumi-lang-yaml=" targetFieldValue " pulumi-lang-java=" targetFieldValue "> target_field_value </span>must be a
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

  RecommendationEngineMediaRecommendationEngineConfig({
    this.engineFeaturesConfig,
    this.optimizationObjective,
    this.optimizationObjectiveConfig,
    this.trainingState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineFeaturesConfigValue = engineFeaturesConfig;
    if (engineFeaturesConfigValue != null) {
      map['engineFeaturesConfig'] = engineFeaturesConfigValue.toMap();
    }
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
      map['trainingState'] = trainingStateValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RecommendationEngineMediaRecommendationEngineConfig.fromMap(
      Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfig(
      engineFeaturesConfig: map['engineFeaturesConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig
              .fromMap(
                  (map['engineFeaturesConfig'] as Map).cast<String, dynamic>()),
      optimizationObjective: map['optimizationObjective'] == null
          ? null
          : map['optimizationObjective'] as String,
      optimizationObjectiveConfig: map['optimizationObjectiveConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
              .fromMap((map['optimizationObjectiveConfig'] as Map)
                  .cast<String, dynamic>()),
      trainingState:
          map['trainingState'] == null ? null : map['trainingState'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
