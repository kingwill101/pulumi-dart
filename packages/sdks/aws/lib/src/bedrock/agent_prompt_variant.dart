// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_gen_ai_resource.dart';
import 'agent_prompt_variant_inference_configuration.dart';
import 'agent_prompt_variant_metadata.dart';
import 'agent_prompt_variant_template_configuration.dart';

class AgentPromptVariant {
  /// Model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  final pulumi.Input<String?>? additionalModelRequestFields;
  /// Generative AI resource with which to use the prompt. If this is not supplied, then a `modelId` must be defined. See `genAiResource` Block for more information.
  final pulumi.Input<AgentPromptVariantGenAiResource?>? genAiResource;
  /// Inference configurations for the prompt variant. See `inferenceConfiguration` Block for more information.
  final pulumi.Input<AgentPromptVariantInferenceConfiguration?>? inferenceConfiguration;
  /// List of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See `metadata` Block for more information.
  final pulumi.Input<List<AgentPromptVariantMetadata>?>? metadatas;
  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a `genAiResource` must be defined.
  final pulumi.Input<String?>? modelId;
  /// Name of the tool.
  final pulumi.Input<String> name;
  /// Configurations for the prompt template. See `templateConfiguration` Block for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfiguration?>? templateConfiguration;
  /// Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  final pulumi.Input<String> templateType;

  /// Creates a new [AgentPromptVariant].
  /// [additionalModelRequestFields] Model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  /// [genAiResource] Generative AI resource with which to use the prompt. If this is not supplied, then a `modelId` must be defined. See `genAiResource` Block for more information.
  /// [inferenceConfiguration] Inference configurations for the prompt variant. See `inferenceConfiguration` Block for more information.
  /// [metadatas] List of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See `metadata` Block for more information.
  /// [modelId] Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a `genAiResource` must be defined.
  /// [name] Name of the tool.
  /// [templateConfiguration] Configurations for the prompt template. See `templateConfiguration` Block for more information.
  /// [templateType] Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  const AgentPromptVariant({
    this.additionalModelRequestFields,
    this.genAiResource,
    this.inferenceConfiguration,
    this.metadatas,
    this.modelId,
    required this.name,
    this.templateConfiguration,
    required this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalModelRequestFields': ?additionalModelRequestFields,
      'genAiResource': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantGenAiResource, Map<String, dynamic>>(genAiResource, (value) => value.toMap()),
      'inferenceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantInferenceConfiguration, Map<String, dynamic>>(inferenceConfiguration, (value) => value.toMap()),
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariantMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<AgentPromptVariantMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelId': ?modelId,
      'name': name,
      'templateConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'templateType': templateType,
    };
  }

  factory AgentPromptVariant.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariant(
      additionalModelRequestFields: (() { final guardedValue = map['additionalModelRequestFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      genAiResource: (() { final guardedValue = map['genAiResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantGenAiResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferenceConfiguration: (() { final guardedValue = map['inferenceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantInferenceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPromptVariantMetadata>(guardedValue, (value) => AgentPromptVariantMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      templateConfiguration: (() { final guardedValue = map['templateConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateType: pulumi.Input.fromValue(map['templateType'] as String),
    );
  }
}
