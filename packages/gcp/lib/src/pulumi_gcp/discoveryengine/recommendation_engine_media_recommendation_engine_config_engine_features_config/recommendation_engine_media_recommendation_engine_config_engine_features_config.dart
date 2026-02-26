// ignore_for_file: unused_element, unnecessary_cast

import '../recommendation_engine_media_recommendation_engine_config_engine_features_config_most_popular_config/recommendation_engine_media_recommendation_engine_config_engine_features_config_most_popular_config.dart';
import '../recommendation_engine_media_recommendation_engine_config_engine_features_config_recommended_for_you_config/recommendation_engine_media_recommendation_engine_config_engine_features_config_recommended_for_you_config.dart';

class RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig {
  /// Feature configurations that are required for creating a Most Popular engine.
  /// Structure is documented below.
  final RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig?
      mostPopularConfig;

  /// Additional feature configurations for creating a `recommended-for-you` engine.
  /// Structure is documented below.
  final RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig?
      recommendedForYouConfig;

  RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig({
    this.mostPopularConfig,
    this.recommendedForYouConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mostPopularConfigValue = mostPopularConfig;
    if (mostPopularConfigValue != null) {
      map['mostPopularConfig'] = mostPopularConfigValue.toMap();
    }
    final recommendedForYouConfigValue = recommendedForYouConfig;
    if (recommendedForYouConfigValue != null) {
      map['recommendedForYouConfig'] = recommendedForYouConfigValue.toMap();
    }
    return map;
  }

  factory RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig.fromMap(
      Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig(
      mostPopularConfig: map['mostPopularConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig
              .fromMap(
                  (map['mostPopularConfig'] as Map).cast<String, dynamic>()),
      recommendedForYouConfig: map['recommendedForYouConfig'] == null
          ? null
          : RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig
              .fromMap((map['recommendedForYouConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
