import 'package:pulumi/pulumi.dart' as pulumi;
import '../search_engine_common_config/search_engine_common_config.dart';
import '../search_engine_search_engine_config/search_engine_search_engine_config.dart';
import 'search_engine_args.dart';

/// Vertex AI Search and Conversation can be used to create a search engine or a chat application by connecting it with a datastore
///
///
/// To get more information about SearchEngine, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.engines)
/// * How-to Guides
/// * [Create a Search Engine](https://cloud.google.com/generative-ai-app-builder/docs/create-engine-es)
///
/// ## Example Usage
///
/// ### Discoveryengine Searchengine Basic
///
///
///
/// ### Discoveryengine Searchengine Agentspace Basic
///
///
///
///
/// ## Import
///
/// SearchEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}`
///
/// When using the `pulumi import` command, SearchEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default {{location}}/{{collection_id}}/{{engine_id}}
/// ```
class SearchEngine extends pulumi.CustomResource {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  late final pulumi.Output<String?> appType;

  /// The collection ID.
  late final pulumi.Output<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final pulumi.Output<SearchEngineCommonConfig?> commonConfig;

  /// Timestamp the Engine was created at.
  late final pulumi.Output<String> createTime;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  late final pulumi.Output<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;

  /// Unique ID to use for Search Engine App.
  late final pulumi.Output<String> engineId;

  /// A map of the feature config for the engine to opt in or opt out of features.
  late final pulumi.Output<Map<String, String>?> features;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  late final pulumi.Output<String?> industryVertical;

  /// The KMS key to be used to protect this Engine at creation time.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the Engine will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  late final pulumi.Output<String?> kmsKeyName;

  /// Location.
  late final pulumi.Output<String> location;

  /// The unique full resource name of the search engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configurations for a Search Engine.
  /// Structure is documented below.
  late final pulumi.Output<SearchEngineSearchEngineConfig> searchEngineConfig;

  /// Timestamp the Engine was last updated.
  late final pulumi.Output<String> updateTime;

  SearchEngine(
    String name, {
    SearchEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/searchEngine:SearchEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appType = registerOutput<String?>('appType');
    this.collectionId = registerOutput<String>('collectionId');
    this.commonConfig =
        registerOutput<SearchEngineCommonConfig?>('commonConfig');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.features = registerOutput<Map<String, String>?>('features');
    this.industryVertical = registerOutput<String?>('industryVertical');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.searchEngineConfig =
        registerOutput<SearchEngineSearchEngineConfig>('searchEngineConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
