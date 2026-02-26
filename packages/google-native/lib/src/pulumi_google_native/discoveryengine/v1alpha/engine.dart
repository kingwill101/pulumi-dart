import 'package:pulumi/pulumi.dart';
import 'engine_args.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_recommendation_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_response.dart';

/// Creates a Engine.
class Engine extends CustomResource {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  late final Output<
          GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse>
      chatEngineConfig;

  /// Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  late final Output<
          GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse>
      chatEngineMetadata;
  late final Output<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  late final Output<GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse>
      commonConfig;

  /// Timestamp the Recommendation Engine was created at.
  late final Output<String> createTime;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  late final Output<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final Output<String> displayName;

  /// Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final Output<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  late final Output<String> industryVertical;
  late final Output<String> location;

  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  late final Output<
          GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse>
      mediaRecommendationEngineConfig;

  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  late final Output<String> name;
  late final Output<String> project;

  /// Additional information of a recommendation engine. Only applicable if solution_type is SOLUTION_TYPE_RECOMMENDATION.
  late final Output<
          GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse>
      recommendationMetadata;

  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  late final Output<
          GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse>
      searchEngineConfig;

  /// Additional config specs for a `similar-items` engine.
  late final Output<Map<String, dynamic>> similarDocumentsConfig;

  /// The solutions of the engine.
  late final Output<String> solutionType;

  /// Timestamp the Recommendation Engine was last updated.
  late final Output<String> updateTime;

  Engine(
    String name, {
    EngineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1alpha:Engine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chatEngineConfig = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse>();
    this.chatEngineMetadata = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse>();
    this.collectionId = Output.createUnknown<String>();
    this.commonConfig = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.dataStoreIds = Output.createUnknown<List<String>>();
    this.displayName = Output.createUnknown<String>();
    this.engineId = Output.createUnknown<String>();
    this.industryVertical = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.mediaRecommendationEngineConfig = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.recommendationMetadata = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse>();
    this.searchEngineConfig = Output.createUnknown<
        GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse>();
    this.similarDocumentsConfig = Output.createUnknown<Map<String, dynamic>>();
    this.solutionType = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
