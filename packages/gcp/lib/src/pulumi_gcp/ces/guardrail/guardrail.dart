import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_action/guardrail_action.dart';
import '../guardrail_code_callback/guardrail_code_callback.dart';
import '../guardrail_content_filter/guardrail_content_filter.dart';
import '../guardrail_llm_policy/guardrail_llm_policy.dart';
import '../guardrail_llm_prompt_security/guardrail_llm_prompt_security.dart';
import '../guardrail_model_safety/guardrail_model_safety.dart';
import 'guardrail_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Guardrail Basic
///
///
///
/// ### Ces Guardrail Transfer Agent Content Filter
///
///
///
/// ### Ces Guardrail Generative Answer Llm Prompt Security
///
///
///
/// ### Ces Guardrail Code Callback
///
///
///
/// ### Ces Guardrail Llm Policy
///
///
///
///
/// ## Import
///
/// Guardrail can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/guardrails/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Guardrail can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default projects/{{project}}/locations/{{location}}/apps/{{app}}/guardrails/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default {{location}}/{{app}}/{{name}}
/// ```
class Guardrail extends pulumi.CustomResource {
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailAction?> action;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailCodeCallback?> codeCallback;

  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailContentFilter?> contentFilter;

  /// Timestamp when the guardrail was created.
  late final pulumi.Output<String> createTime;

  /// Description of the guardrail.
  late final pulumi.Output<String?> description;

  /// Display name of the guardrail.
  late final pulumi.Output<String> displayName;

  /// Whether the guardrail is enabled.
  late final pulumi.Output<bool?> enabled;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// The ID to use for the guardrail, which will become the final component of
  /// the guardrail's resource name. If not provided, a unique ID will be
  /// automatically assigned for the guardrail.
  late final pulumi.Output<String> guardrailId;

  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailLlmPolicy?> llmPolicy;

  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailLlmPromptSecurity?> llmPromptSecurity;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  late final pulumi.Output<GuardrailModelSafety?> modelSafety;

  /// Identifier. The unique identifier of the guardrail.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp when the guardrail was last updated.
  late final pulumi.Output<String> updateTime;

  Guardrail(
    String name, {
    GuardrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/guardrail:Guardrail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<GuardrailAction?>('action');
    this.app = registerOutput<String>('app');
    this.codeCallback = registerOutput<GuardrailCodeCallback?>('codeCallback');
    this.contentFilter =
        registerOutput<GuardrailContentFilter?>('contentFilter');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.etag = registerOutput<String>('etag');
    this.guardrailId = registerOutput<String>('guardrailId');
    this.llmPolicy = registerOutput<GuardrailLlmPolicy?>('llmPolicy');
    this.llmPromptSecurity =
        registerOutput<GuardrailLlmPromptSecurity?>('llmPromptSecurity');
    this.location = registerOutput<String>('location');
    this.modelSafety = registerOutput<GuardrailModelSafety?>('modelSafety');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
