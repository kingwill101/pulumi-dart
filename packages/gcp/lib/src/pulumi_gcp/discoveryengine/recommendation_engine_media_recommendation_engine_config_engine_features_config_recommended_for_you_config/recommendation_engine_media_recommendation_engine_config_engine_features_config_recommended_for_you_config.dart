// ignore_for_file: unused_element, unnecessary_cast

class RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig {
  /// The type of event with which the engine is queried at prediction time.
  /// If set to `generic`, only `view-item`, `media-play`,and
  /// `media-complete` will be used as `context-event` in engine training. If
  /// set to `view-home-page`, `view-home-page` will also be used as
  /// `context-events` in addition to `view-item`, `media-play`, and
  /// `media-complete`. Currently supported for the `recommended-for-you`
  /// engine. Currently supported values: `view-home-page`, `generic`.
  final String? contextEventType;

  RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig({
    this.contextEventType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextEventTypeValue = contextEventType;
    if (contextEventTypeValue != null) {
      map['contextEventType'] = contextEventTypeValue;
    }
    return map;
  }

  factory RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig.fromMap(
      Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig(
      contextEventType: map['contextEventType'] == null
          ? null
          : map['contextEventType'] as String,
    );
  }
}
