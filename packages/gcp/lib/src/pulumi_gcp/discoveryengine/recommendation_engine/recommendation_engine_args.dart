// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../recommendation_engine_common_config/recommendation_engine_common_config.dart';
import '../recommendation_engine_media_recommendation_engine_config/recommendation_engine_media_recommendation_engine_config.dart';

/// The set of arguments for RecommendationEngine.
class RecommendationEngineArgs {
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final Input<RecommendationEngineCommonConfig>? commonConfig;

  /// The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  final Input<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> displayName;

  /// Unique ID to use for Recommendation Engine.
  final Input<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`.
  final Input<String>? industryVertical;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// with SOLUTION_TYPE_RECOMMENDATION solution type and MEDIA industry vertical.
  /// Structure is documented below.
  final Input<RecommendationEngineMediaRecommendationEngineConfig>?
      mediaRecommendationEngineConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  RecommendationEngineArgs({
    this.commonConfig,
    required this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    required this.location,
    this.mediaRecommendationEngineConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = Input.mapOptionalInputValue<
          RecommendationEngineCommonConfig,
          Map<String, dynamic>>(commonConfigValue, (value) => value.toMap());
    }
    map['dataStoreIds'] = dataStoreIds;
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final industryVerticalValue = industryVertical;
    if (industryVerticalValue != null) {
      map['industryVertical'] = industryVerticalValue;
    }
    map['location'] = location;
    final mediaRecommendationEngineConfigValue =
        mediaRecommendationEngineConfig;
    if (mediaRecommendationEngineConfigValue != null) {
      map['mediaRecommendationEngineConfig'] = Input.mapOptionalInputValue<
              RecommendationEngineMediaRecommendationEngineConfig,
              Map<String, dynamic>>(
          mediaRecommendationEngineConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory RecommendationEngineArgs.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineArgs(
      commonConfig: Input.asOptionalInput<RecommendationEngineCommonConfig>(
          map['commonConfig']),
      dataStoreIds: Input.asInput<List<String>>(map['dataStoreIds']),
      displayName: Input.asInput<String>(map['displayName']),
      engineId: Input.asInput<String>(map['engineId']),
      industryVertical: Input.asOptionalInput<String>(map['industryVertical']),
      location: Input.asInput<String>(map['location']),
      mediaRecommendationEngineConfig: Input.asOptionalInput<
              RecommendationEngineMediaRecommendationEngineConfig>(
          map['mediaRecommendationEngineConfig']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
