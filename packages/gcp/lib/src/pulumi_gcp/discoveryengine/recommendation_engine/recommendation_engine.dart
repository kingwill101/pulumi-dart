import 'package:pulumi/pulumi.dart';
import '../recommendation_engine_common_config/recommendation_engine_common_config.dart';
import '../recommendation_engine_media_recommendation_engine_config/recommendation_engine_media_recommendation_engine_config.dart';
import 'recommendation_engine_args.dart';

/// Vertex AI Search recommendation apps.
///
///
/// To get more information about RecommendationEngine, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.engines)
/// * How-to Guides
/// * [Create a Recommendation Engine](https://cloud.google.com/generative-ai-app-builder/docs/create-generic-recommendations-app)
///
/// ## Example Usage
///
/// ### Discoveryengine Recommendationengine Generic
///
///
///
/// ### Discoveryengine Recommendationengine Media
///
///
///
///
/// ## Import
///
/// RecommendationEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/engines/{{engine_id}}`
///
/// * `{{project}}/{{location}}/{{engine_id}}`
///
/// * `{{location}}/{{engine_id}}`
///
/// When using the `pulumi import` command, RecommendationEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default projects/{{project}}/locations/{{location}}/collections/default_collection/engines/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default {{project}}/{{location}}/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default {{location}}/{{engine_id}}
/// ```
class RecommendationEngine extends CustomResource {
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final Output<RecommendationEngineCommonConfig?> commonConfig;

  /// Timestamp the Engine was created at.
  late final Output<String> createTime;

  /// The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  late final Output<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final Output<String> displayName;

  /// Unique ID to use for Recommendation Engine.
  late final Output<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`.
  late final Output<String?> industryVertical;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// with SOLUTION_TYPE_RECOMMENDATION solution type and MEDIA industry vertical.
  /// Structure is documented below.
  late final Output<RecommendationEngineMediaRecommendationEngineConfig?>
      mediaRecommendationEngineConfig;

  /// The unique full resource name of the recommendation engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Timestamp the Engine was last updated.
  late final Output<String> updateTime;

  RecommendationEngine(
    String name, {
    RecommendationEngineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/recommendationEngine:RecommendationEngine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.commonConfig =
        registerOutput<RecommendationEngineCommonConfig?>('commonConfig');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.industryVertical = registerOutput<String?>('industryVertical');
    this.location = registerOutput<String>('location');
    this.mediaRecommendationEngineConfig =
        registerOutput<RecommendationEngineMediaRecommendationEngineConfig?>(
            'mediaRecommendationEngineConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
