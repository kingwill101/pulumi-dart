import 'package:pulumi/pulumi.dart';
import 'serving_config_args.dart';

/// Represents a serving config which is a singleton resource under engine. A default
/// serving config is automatically provisioned and deleted with its parent engine.
///
///
/// To get more information about ServingConfig, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.collections.engines.servingConfigs)
///
/// ## Import
///
/// ServingConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/servingConfigs/{{serving_config_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}`
///
/// When using the `pulumi import` command, ServingConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/servingConfigs/{{serving_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default {{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}
/// ```
class ServingConfig extends CustomResource {
  /// The resource IDs of the boost controls to be applied.
  late final Output<List<String>?> boostControlIds;

  /// The collection ID. Currently only accepts <span pulumi-lang-nodejs=""defaultCollection"" pulumi-lang-dotnet=""DefaultCollection"" pulumi-lang-go=""defaultCollection"" pulumi-lang-python=""default_collection"" pulumi-lang-yaml=""defaultCollection"" pulumi-lang-java=""defaultCollection"">"default_collection"</span>.
  late final Output<String?> collectionId;

  /// The ID of the engine associated with the serving config.
  late final Output<String> engineId;

  /// The resource IDs of the filter controls to be applied.
  late final Output<List<String>?> filterControlIds;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the serving config. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The resource IDs of the promote controls to be applied.
  late final Output<List<String>?> promoteControlIds;

  /// The resource IDs of the redirect controls to be applied.
  late final Output<List<String>?> redirectControlIds;

  /// 'The unique ID of the serving config. Currently only accepts <span pulumi-lang-nodejs=""defaultSearch"" pulumi-lang-dotnet=""DefaultSearch"" pulumi-lang-go=""defaultSearch"" pulumi-lang-python=""default_search"" pulumi-lang-yaml=""defaultSearch"" pulumi-lang-java=""defaultSearch"">"default_search"</span>.'
  late final Output<String?> servingConfigId;

  /// The resource IDs of the synonyms controls to be applied.
  late final Output<List<String>?> synonymsControlIds;

  ServingConfig(
    String name, {
    ServingConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/servingConfig:ServingConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.boostControlIds = Output.createUnknown<List<String>?>();
    this.collectionId = Output.createUnknown<String?>();
    this.engineId = Output.createUnknown<String>();
    this.filterControlIds = Output.createUnknown<List<String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.promoteControlIds = Output.createUnknown<List<String>?>();
    this.redirectControlIds = Output.createUnknown<List<String>?>();
    this.servingConfigId = Output.createUnknown<String?>();
    this.synonymsControlIds = Output.createUnknown<List<String>?>();
  }
}
