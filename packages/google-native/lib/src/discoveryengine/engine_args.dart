// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_industry_vertical.dart';
import 'engine_solution_type.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config.dart';

/// {@template pulumi_discoveryengine_v1alpha_engine_args_doc}
/// The set of arguments for Engine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_engine_args_doc}
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

  /// Creates a new [EngineArgs].
  /// [chatEngineConfig] Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  /// [collectionId] Required.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [location] Optional.
  /// [mediaRecommendationEngineConfig] Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  /// [name] Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [project] Optional.
  /// [searchEngineConfig] Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  /// [similarDocumentsConfig] Additional config specs for a `similar-items` engine.
  /// [solutionType] The solutions of the engine.
  EngineArgs({
    GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig? chatEngineConfig,
    required String collectionId,
    GoogleCloudDiscoveryengineV1alphaEngineCommonConfig? commonConfig,
    List<String>? dataStoreIds,
    required String displayName,
    required String engineId,
    EngineIndustryVertical? industryVertical,
    String? location,
    GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig?
        mediaRecommendationEngineConfig,
    String? name,
    String? project,
    GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig?
        searchEngineConfig,
    Map<String, dynamic>? similarDocumentsConfig,
    required EngineSolutionType solutionType,
  })  : chatEngineConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>(
            chatEngineConfig),
        collectionId = pulumi.Input.asInput<String>(collectionId),
        commonConfig = pulumi.Input.asOptionalInput<
            GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>(commonConfig),
        dataStoreIds = pulumi.Input.asOptionalInput<List<String>>(dataStoreIds),
        displayName = pulumi.Input.asInput<String>(displayName),
        engineId = pulumi.Input.asInput<String>(engineId),
        industryVertical = pulumi.Input.asOptionalInput<EngineIndustryVertical>(
            industryVertical),
        location = pulumi.Input.asOptionalInput<String>(location),
        mediaRecommendationEngineConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>(
            mediaRecommendationEngineConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        searchEngineConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>(
            searchEngineConfig),
        similarDocumentsConfig =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                similarDocumentsConfig),
        solutionType = pulumi.Input.asInput<EngineSolutionType>(solutionType);

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
      chatEngineConfig: map['chatEngineConfig'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig.fromMap(
              (map['chatEngineConfig'] as Map).cast<String, dynamic>()),
      collectionId: map['collectionId'] as String,
      commonConfig: map['commonConfig'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineCommonConfig.fromMap(
              (map['commonConfig'] as Map).cast<String, dynamic>()),
      dataStoreIds: map['dataStoreIds'] == null
          ? null
          : (map['dataStoreIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      engineId: map['engineId'] as String,
      industryVertical: map['industryVertical'] == null
          ? null
          : EngineIndustryVertical.fromValue(map['industryVertical'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      mediaRecommendationEngineConfig: map['mediaRecommendationEngineConfig'] ==
              null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
              .fromMap((map['mediaRecommendationEngineConfig'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      searchEngineConfig: map['searchEngineConfig'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig.fromMap(
              (map['searchEngineConfig'] as Map).cast<String, dynamic>()),
      similarDocumentsConfig: map['similarDocumentsConfig'] == null
          ? null
          : (map['similarDocumentsConfig'] as Map).cast<String, dynamic>(),
      solutionType: EngineSolutionType.fromValue(map['solutionType'] as String),
    );
  }
}
