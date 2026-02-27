// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_industry_vertical.dart';
import 'engine_solution_type.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config.dart';

/// The set of arguments for Engine.
class EngineArgs {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>?
      chatEngineConfig;
  final pulumi.Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>?
      commonConfig;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  final pulumi.Input<List<String>>? dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;

  /// Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  final pulumi.Input<EngineIndustryVertical>? industryVertical;
  final pulumi.Input<String>? location;

  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  final pulumi.Input<
          GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>?
      mediaRecommendationEngineConfig;

  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>?
      searchEngineConfig;

  /// Additional config specs for a `similar-items` engine.
  final pulumi.Input<Map<String, dynamic>>? similarDocumentsConfig;

  /// The solutions of the engine.
  final pulumi.Input<EngineSolutionType> solutionType;

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
      map['chatEngineConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig,
              Map<String, dynamic>>(
          chatEngineConfigValue, (value) => value.toMap());
    }
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.mapOptionalInputValue<EngineIndustryVertical, String>(
              industryVerticalValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mediaRecommendationEngineConfigValue =
        mediaRecommendationEngineConfig;
    if (mediaRecommendationEngineConfigValue != null) {
      map['mediaRecommendationEngineConfig'] = pulumi
          .Input.mapOptionalInputValue<
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
      map['searchEngineConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig,
              Map<String, dynamic>>(
          searchEngineConfigValue, (value) => value.toMap());
    }
    final similarDocumentsConfigValue = similarDocumentsConfig;
    if (similarDocumentsConfigValue != null) {
      map['similarDocumentsConfig'] = similarDocumentsConfigValue;
    }
    map['solutionType'] =
        pulumi.Input.mapInputValue<EngineSolutionType, String>(
            solutionType, (value) => value.value);
    return map;
  }

  factory EngineArgs.fromMap(Map<String, dynamic> map) {
    return EngineArgs(
      chatEngineConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>(
          map['chatEngineConfig']),
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      commonConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>(
          map['commonConfig']),
      dataStoreIds:
          pulumi.Input.asOptionalInput<List<String>>(map['dataStoreIds']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      engineId: pulumi.Input.asInput<String>(map['engineId']),
      industryVertical: pulumi.Input.asOptionalInput<EngineIndustryVertical>(
          map['industryVertical']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mediaRecommendationEngineConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>(
          map['mediaRecommendationEngineConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      searchEngineConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>(
          map['searchEngineConfig']),
      similarDocumentsConfig:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(
              map['similarDocumentsConfig']),
      solutionType:
          pulumi.Input.asInput<EngineSolutionType>(map['solutionType']),
    );
  }
}
