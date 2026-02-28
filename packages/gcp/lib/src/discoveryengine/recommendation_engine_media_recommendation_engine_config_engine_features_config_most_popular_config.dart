// ignore_for_file: unused_element, unnecessary_cast


class RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig {
  /// The time window of which the engine is queried at training and
  /// prediction time. Positive integers only. The value translates to the
  /// last X days of events. Currently required for the `most-popular-items`
  /// engine.
  final int? timeWindowDays;

  /// Creates a new [RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig].
  /// [timeWindowDays] The time window of which the engine is queried at training and
  RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig({
    this.timeWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeWindowDays': ?timeWindowDays,
    };
  }

  factory RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig(
      timeWindowDays: map['timeWindowDays'] == null ? null : map['timeWindowDays'] as int,
    );
  }
}

