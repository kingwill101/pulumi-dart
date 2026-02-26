// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'engine_industry_vertical.dart';
import 'engine_solution_type.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config.dart';

/// The set of arguments for Engine.
class EngineArgs {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final Input<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>?
      chatEngineConfig;
  final Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  final Input<GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>?
      commonConfig;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  final Input<List<String>>? dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> displayName;

  /// Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final Input<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  final Input<EngineIndustryVertical>? industryVertical;
  final Input<String>? location;

  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  final Input<
          GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>?
      mediaRecommendationEngineConfig;

  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  final Input<String>? name;
  final Input<String>? project;

  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  final Input<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>?
      searchEngineConfig;

  /// Additional config specs for a `similar-items` engine.
  final Input<Map<String, dynamic>>? similarDocumentsConfig;

  /// The solutions of the engine.
  final Input<EngineSolutionType> solutionType;

  EngineArgs({
    this.chatEngineConfig,
    required this.collectionId,
    this.commonConfig,
    this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    this.location,
    this.mediaRecommendationEngineConfig,
    this.name,
    this.project,
    this.searchEngineConfig,
    this.similarDocumentsConfig,
    required this.solutionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chatEngineConfigValue = chatEngineConfig;
    if (chatEngineConfigValue != null) {
      map['chatEngineConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig,
              Map<String, dynamic>>(
          chatEngineConfigValue, (value) => value.toMap());
    }
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDiscoveryengineV1alphaEngineCommonConfig,
          Map<String, dynamic>>(commonConfigValue, (value) => value.toMap());
    }
    final dataStoreIdsValue = dataStoreIds;
    if (dataStoreIdsValue != null) {
      map['dataStoreIds'] = dataStoreIdsValue;
    }
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final industryVerticalValue = industryVertical;
    if (industryVerticalValue != null) {
      map['industryVertical'] =
          Input.mapOptionalInputValue<EngineIndustryVertical, String>(
              industryVerticalValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mediaRecommendationEngineConfigValue =
        mediaRecommendationEngineConfig;
    if (mediaRecommendationEngineConfigValue != null) {
      map['mediaRecommendationEngineConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig,
              Map<String, dynamic>>(
          mediaRecommendationEngineConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final searchEngineConfigValue = searchEngineConfig;
    if (searchEngineConfigValue != null) {
      map['searchEngineConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig,
              Map<String, dynamic>>(
          searchEngineConfigValue, (value) => value.toMap());
    }
    final similarDocumentsConfigValue = similarDocumentsConfig;
    if (similarDocumentsConfigValue != null) {
      map['similarDocumentsConfig'] = similarDocumentsConfigValue;
    }
    map['solutionType'] = Input.mapInputValue<EngineSolutionType, String>(
        solutionType, (value) => value.value);
    return map;
  }

  factory EngineArgs.fromMap(Map<String, dynamic> map) {
    return EngineArgs(
      chatEngineConfig: Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>(
          map['chatEngineConfig']),
      collectionId: Input.asInput<String>(map['collectionId']),
      commonConfig: Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>(
          map['commonConfig']),
      dataStoreIds: Input.asOptionalInput<List<String>>(map['dataStoreIds']),
      displayName: Input.asInput<String>(map['displayName']),
      engineId: Input.asInput<String>(map['engineId']),
      industryVertical: Input.asOptionalInput<EngineIndustryVertical>(
          map['industryVertical']),
      location: Input.asOptionalInput<String>(map['location']),
      mediaRecommendationEngineConfig: Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>(
          map['mediaRecommendationEngineConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      searchEngineConfig: Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>(
          map['searchEngineConfig']),
      similarDocumentsConfig: Input.asOptionalInput<Map<String, dynamic>>(
          map['similarDocumentsConfig']),
      solutionType: Input.asInput<EngineSolutionType>(map['solutionType']),
    );
  }
}
