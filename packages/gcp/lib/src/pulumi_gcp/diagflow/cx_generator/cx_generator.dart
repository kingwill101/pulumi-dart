import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_generator_llm_model_settings/cx_generator_llm_model_settings.dart';
import '../cx_generator_model_parameter/cx_generator_model_parameter.dart';
import '../cx_generator_placeholder/cx_generator_placeholder.dart';
import '../cx_generator_prompt_text/cx_generator_prompt_text.dart';
import 'cx_generator_args.dart';

/// Generators contain prompt to be sent to the LLM model to generate text. The prompt can contain parameters which will be resolved before calling the model. It can optionally contain banned phrases to ensure the model responses are safe.
///
///
/// To get more information about Generator, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.generators)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Generator Basic
///
///
///
///
/// ## Import
///
/// Generator can be imported using any of these accepted formats:
///
/// * `{{parent}}/generators/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Generator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerator:CxGenerator default {{parent}}/generators/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerator:CxGenerator default {{parent}}/{{name}}
/// ```
class CxGenerator extends pulumi.CustomResource {
  /// The human-readable name of the generator, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  late final pulumi.Output<String?> languageCode;

  /// The LLM model settings.
  /// Structure is documented below.
  late final pulumi.Output<CxGeneratorLlmModelSettings?> llmModelSettings;

  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  late final pulumi.Output<CxGeneratorModelParameter?> modelParameter;

  /// The unique identifier of the Generator.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/generators/<Generator ID>.
  late final pulumi.Output<String> name;

  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  late final pulumi.Output<List<CxGeneratorPlaceholder>?> placeholders;

  /// Prompt for the LLM model.
  /// Structure is documented below.
  late final pulumi.Output<CxGeneratorPromptText> promptText;

  CxGenerator(
    String name, {
    CxGeneratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxGenerator:CxGenerator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.languageCode = registerOutput<String?>('languageCode');
    this.llmModelSettings =
        registerOutput<CxGeneratorLlmModelSettings?>('llmModelSettings');
    this.modelParameter =
        registerOutput<CxGeneratorModelParameter?>('modelParameter');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.placeholders =
        registerOutput<List<CxGeneratorPlaceholder>?>('placeholders');
    this.promptText = registerOutput<CxGeneratorPromptText>('promptText');
  }
}
