import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_reasoning_engine_encryption_spec/ai_reasoning_engine_encryption_spec.dart';
import '../ai_reasoning_engine_spec/ai_reasoning_engine_spec.dart';
import 'ai_reasoning_engine_args.dart';

/// ReasoningEngine provides a customizable runtime for models to determine which actions to take and in which order.
///
///
/// To get more information about ReasoningEngine, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.reasoningEngines/)
/// * How-to Guides
/// * [Develop and deploy agents on Vertex AI Agent Engine](https://cloud.google.com/vertex-ai/generative-ai/docs/agent-engine/quickstart)
///
/// ## Example Usage
///
/// ### Vertex Ai Reasoning Engine Source Based Deployment
///
///
///
/// ### Vertex Ai Reasoning Engine Psc Interface
///
///
///
/// ### Vertex Ai Reasoning Engine Full
///
///
///
///
/// ## Import
///
/// ReasoningEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ReasoningEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{name}}
/// ```
class AiReasoningEngine extends pulumi.CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The description of the ReasoningEngine.
  late final pulumi.Output<String?> description;

  /// The display name of the ReasoningEngine.
  late final pulumi.Output<String> displayName;

  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineEncryptionSpec?> encryptionSpec;

  /// The generated name of the ReasoningEngine, in the format
  /// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the reasoning engine. eg us-central1
  late final pulumi.Output<String?> region;

  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineSpec?> spec;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  AiReasoningEngine(
    String name, {
    AiReasoningEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngine:AiReasoningEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<AiReasoningEngineEncryptionSpec?>('encryptionSpec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.spec = registerOutput<AiReasoningEngineSpec?>('spec');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
