import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_args.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_recommendation_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_response.dart';

/// Creates a Engine.
class Engine extends pulumi.CustomResource {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse
  >
  chatEngineConfig;

  /// Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse
  >
  chatEngineMetadata;
  late final pulumi.Output<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse
  >
  commonConfig;

  /// Timestamp the Recommendation Engine was created at.
  late final pulumi.Output<String> createTime;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  late final pulumi.Output<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;

  /// Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  late final pulumi.Output<String> industryVertical;
  late final pulumi.Output<String> location;

  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse
  >
  mediaRecommendationEngineConfig;

  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Additional information of a recommendation engine. Only applicable if solution_type is SOLUTION_TYPE_RECOMMENDATION.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse
  >
  recommendationMetadata;

  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  late final pulumi.Output<
    GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse
  >
  searchEngineConfig;

  /// Additional config specs for a `similar-items` engine.
  late final pulumi.Output<Map<String, dynamic>> similarDocumentsConfig;

  /// The solutions of the engine.
  late final pulumi.Output<String> solutionType;

  /// Timestamp the Recommendation Engine was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Engine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Engine]. {@macro pulumi_discoveryengine_v1alpha_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Engine(String name, {EngineArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:discoveryengine/v1alpha:Engine',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.chatEngineConfig =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse
        >('chatEngineConfig');
    this.chatEngineMetadata =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse
        >('chatEngineMetadata');
    this.collectionId = registerOutput<String>('collectionId');
    this.commonConfig =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse
        >('commonConfig');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.industryVertical = registerOutput<String>('industryVertical');
    this.location = registerOutput<String>('location');
    this.mediaRecommendationEngineConfig =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse
        >('mediaRecommendationEngineConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recommendationMetadata =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse
        >('recommendationMetadata');
    this.searchEngineConfig =
        registerOutput<
          GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse
        >('searchEngineConfig');
    this.similarDocumentsConfig = registerOutput<Map<String, dynamic>>(
      'similarDocumentsConfig',
    );
    this.solutionType = registerOutput<String>('solutionType');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
