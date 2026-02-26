import 'package:pulumi/pulumi.dart';
import '../ai_rag_engine_config_rag_managed_db_config/ai_rag_engine_config_rag_managed_db_config.dart';
import 'ai_rag_engine_config_args.dart';

/// Vertex AI RAG Engine lets you scale your RagManagedDb instance based on your usage and performance requirements using a choice of two tiers, and optionally, lets you delete your Vertex AI RAG Engine data using a third tier. The tier is a project-level setting that's available in the RagEngineConfig resource that impacts all RAG corpora using RagManagedDb. The following tiers are available in RagEngineConfig: Basic, Scaled and Unprovisioned.
///
///
/// To get more information about RagEngineConfig, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/reference/rest/v1/RagEngineConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/rag-engine/understanding-ragmanageddb)
///
/// ## Example Usage
///
/// ## Import
///
/// RagEngineConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/ragEngineConfig`
///
/// * `{{project}}/{{region}}`
///
/// * `{{region}}`
///
/// When using the `pulumi import` command, RagEngineConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default projects/{{project}}/locations/{{region}}/ragEngineConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default {{project}}/{{region}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default {{region}}
/// ```
class AiRagEngineConfig extends CustomResource {
  /// The resource name of the Dataset. This value is set by Google.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  late final Output<AiRagEngineConfigRagManagedDbConfig> ragManagedDbConfig;

  /// The region of the RagEngineConfig. eg us-central1
  late final Output<String> region;

  AiRagEngineConfig(
    String name, {
    AiRagEngineConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiRagEngineConfig:AiRagEngineConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.ragManagedDbConfig =
        Output.createUnknown<AiRagEngineConfigRagManagedDbConfig>();
    this.region = Output.createUnknown<String>();
  }
}
