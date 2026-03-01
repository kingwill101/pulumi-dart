// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_inference_parameter.dart';
import 'generator_summarization_context.dart';

/// {@template pulumi_diagflow_generator_generator_args_doc}
/// The set of arguments for Generator.
/// {@endtemplate}
/// {@macro pulumi_diagflow_generator_generator_args_doc}
class GeneratorArgs {
  /// Optional. Human readable description of the generator.
  final pulumi.Input<String>? description;

  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  final pulumi.Input<String>? generatorId;

  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  final pulumi.Input<GeneratorInferenceParameter>? inferenceParameter;

  /// desc
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  final pulumi.Input<String>? publishedModel;

  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContext> summarizationContext;

  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final pulumi.Input<String>? triggerEvent;

  /// Creates a new [GeneratorArgs].
  /// [description] Optional. Human readable description of the generator.
  /// [generatorId] Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  /// [inferenceParameter] Optional. Inference parameters for this generator.
  /// [location] desc
  /// [project] The ID of the project in which the resource belongs.
  /// [publishedModel] Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  /// [summarizationContext] Input of prebuilt Summarization feature.
  /// [triggerEvent] Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  GeneratorArgs({
    String? description,
    String? generatorId,
    GeneratorInferenceParameter? inferenceParameter,
    required String location,
    String? project,
    String? publishedModel,
    required GeneratorSummarizationContext summarizationContext,
    String? triggerEvent,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       generatorId = pulumi.Input.asOptionalInput<String>(generatorId),
       inferenceParameter =
           pulumi.Input.asOptionalInput<GeneratorInferenceParameter>(
             inferenceParameter,
           ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       publishedModel = pulumi.Input.asOptionalInput<String>(publishedModel),
       summarizationContext = pulumi
           .Input.asInput<GeneratorSummarizationContext>(summarizationContext),
       triggerEvent = pulumi.Input.asOptionalInput<String>(triggerEvent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'generatorId': ?generatorId,
      'inferenceParameter':
          ?pulumi.Input.mapOptionalInputValue<
            GeneratorInferenceParameter,
            Map<String, dynamic>
          >(inferenceParameter, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'publishedModel': ?publishedModel,
      'summarizationContext':
          pulumi.Input.mapInputValue<
            GeneratorSummarizationContext,
            Map<String, dynamic>
          >(summarizationContext, (value) => value.toMap()),
      'triggerEvent': ?triggerEvent,
    };
  }

  factory GeneratorArgs.fromMap(Map<String, dynamic> map) {
    return GeneratorArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      generatorId: map['generatorId'] == null
          ? null
          : map['generatorId'] as String,
      inferenceParameter: map['inferenceParameter'] == null
          ? null
          : GeneratorInferenceParameter.fromMap(
              (map['inferenceParameter'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publishedModel: map['publishedModel'] == null
          ? null
          : map['publishedModel'] as String,
      summarizationContext: GeneratorSummarizationContext.fromMap(
        (map['summarizationContext'] as Map).cast<String, dynamic>(),
      ),
      triggerEvent: map['triggerEvent'] == null
          ? null
          : map['triggerEvent'] as String,
    );
  }
}
