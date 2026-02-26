// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../generator_inference_parameter/generator_inference_parameter.dart';
import '../generator_summarization_context/generator_summarization_context.dart';

/// The set of arguments for Generator.
class GeneratorArgs {
  /// Optional. Human readable description of the generator.
  final Input<String>? description;

  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  final Input<String>? generatorId;

  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  final Input<GeneratorInferenceParameter>? inferenceParameter;

  /// desc
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  final Input<String>? publishedModel;

  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  final Input<GeneratorSummarizationContext> summarizationContext;

  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final Input<String>? triggerEvent;

  GeneratorArgs({
    this.description,
    this.generatorId,
    this.inferenceParameter,
    required this.location,
    this.project,
    this.publishedModel,
    required this.summarizationContext,
    this.triggerEvent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final generatorIdValue = generatorId;
    if (generatorIdValue != null) {
      map['generatorId'] = generatorIdValue;
    }
    final inferenceParameterValue = inferenceParameter;
    if (inferenceParameterValue != null) {
      map['inferenceParameter'] = Input.mapOptionalInputValue<
              GeneratorInferenceParameter, Map<String, dynamic>>(
          inferenceParameterValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publishedModelValue = publishedModel;
    if (publishedModelValue != null) {
      map['publishedModel'] = publishedModelValue;
    }
    map['summarizationContext'] = Input.mapInputValue<
        GeneratorSummarizationContext,
        Map<String, dynamic>>(summarizationContext, (value) => value.toMap());
    final triggerEventValue = triggerEvent;
    if (triggerEventValue != null) {
      map['triggerEvent'] = triggerEventValue;
    }
    return map;
  }

  factory GeneratorArgs.fromMap(Map<String, dynamic> map) {
    return GeneratorArgs(
      description: Input.asOptionalInput<String>(map['description']),
      generatorId: Input.asOptionalInput<String>(map['generatorId']),
      inferenceParameter: Input.asOptionalInput<GeneratorInferenceParameter>(
          map['inferenceParameter']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      publishedModel: Input.asOptionalInput<String>(map['publishedModel']),
      summarizationContext: Input.asInput<GeneratorSummarizationContext>(
          map['summarizationContext']),
      triggerEvent: Input.asOptionalInput<String>(map['triggerEvent']),
    );
  }
}
