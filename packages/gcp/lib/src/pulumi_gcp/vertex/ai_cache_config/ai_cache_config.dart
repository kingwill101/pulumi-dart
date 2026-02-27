import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_cache_config_args.dart';

/// Config of GenAI caching features. This is a singleton resource.
///
///
/// To get more information about CacheConfig, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/reference/rest/v1/projects/updateCacheConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/reference/rest/Shared.Types/CacheConfig)
///
/// ## Example Usage
///
/// ### Vertex Ai Cache Config
///
///
///
///
/// ## Import
///
/// CacheConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/cacheConfig`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, CacheConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiCacheConfig:AiCacheConfig default projects/{{project}}/cacheConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiCacheConfig:AiCacheConfig default {{project}}
/// ```
class AiCacheConfig extends pulumi.CustomResource {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  late final pulumi.Output<bool> disableCache;

  /// Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  AiCacheConfig(
    String name, {
    AiCacheConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiCacheConfig:AiCacheConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disableCache = registerOutput<bool>('disableCache');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
