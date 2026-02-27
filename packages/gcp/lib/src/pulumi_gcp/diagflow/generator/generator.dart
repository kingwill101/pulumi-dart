import 'package:pulumi/pulumi.dart' as pulumi;
import '../generator_inference_parameter/generator_inference_parameter.dart';
import '../generator_summarization_context/generator_summarization_context.dart';
import 'generator_args.dart';

/// LLM generator.
///
///
/// To get more information about Generator, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2beta1/projects.locations.generators)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/agent-assist/docs)
///
/// ## Example Usage
///
/// ### Dialogflow Generator Basic
///
///
///
///
/// ## Import
///
/// Generator can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/generators/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Generator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/generator:Generator default projects/{{project}}/locations/{{location}}/generators/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/generator:Generator default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/generator:Generator default {{location}}/{{name}}
/// ```
class Generator extends pulumi.CustomResource {
  /// Optional. Human readable description of the generator.
  late final pulumi.Output<String?> description;

  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  late final pulumi.Output<String> generatorId;

  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorInferenceParameter?> inferenceParameter;

  /// desc
  late final pulumi.Output<String> location;

  /// The resource name of the generator.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  late final pulumi.Output<String?> publishedModel;

  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorSummarizationContext> summarizationContext;

  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  late final pulumi.Output<String?> triggerEvent;

  Generator(
    String name, {
    GeneratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/generator:Generator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.generatorId = registerOutput<String>('generatorId');
    this.inferenceParameter =
        registerOutput<GeneratorInferenceParameter?>('inferenceParameter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.publishedModel = registerOutput<String?>('publishedModel');
    this.summarizationContext =
        registerOutput<GeneratorSummarizationContext>('summarizationContext');
    this.triggerEvent = registerOutput<String?>('triggerEvent');
  }
}
