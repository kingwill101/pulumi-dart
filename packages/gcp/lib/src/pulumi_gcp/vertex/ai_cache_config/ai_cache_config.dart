import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cacheConfig = new gcp.vertex.AiCacheConfig("cache_config", {
/// project: "my-project-name",
/// disableCache: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cache_config = gcp.vertex.AiCacheConfig("cache_config",
/// project="my-project-name",
/// disable_cache=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cacheConfig = new Gcp.Vertex.AiCacheConfig("cache_config", new()
/// {
/// Project = "my-project-name",
/// DisableCache = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiCacheConfig(ctx, "cache_config", &vertex.AiCacheConfigArgs{
/// Project:      pulumi.String("my-project-name"),
/// DisableCache: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiCacheConfig;
/// import com.pulumi.gcp.vertex.AiCacheConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var cacheConfig = new AiCacheConfig("cacheConfig", AiCacheConfigArgs.builder()
/// .project("my-project-name")
/// .disableCache(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cacheConfig:
/// type: gcp:vertex:AiCacheConfig
/// name: cache_config
/// properties:
/// project: my-project-name
/// disableCache: true
/// ```
/// <!--End PulumiCodeChooser -->
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
class AiCacheConfig extends CustomResource {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  late final Output<bool> disableCache;

  /// Identifier. name of the cache config. Format: - `projects/{project}/cacheConfig`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  AiCacheConfig(
    String name, {
    AiCacheConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiCacheConfig:AiCacheConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disableCache = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
