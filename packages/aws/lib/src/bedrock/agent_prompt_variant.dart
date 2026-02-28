// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_gen_ai_resource.dart';
import 'agent_prompt_variant_inference_configuration.dart';
import 'agent_prompt_variant_metadata.dart';
import 'agent_prompt_variant_template_configuration.dart';

class AgentPromptVariant {
  /// Contains model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  final String? additionalModelRequestFields;
  /// Specifies a generative AI resource with which to use the prompt. If this is not supplied, then a `gen_ai_resource` must be defined. See Generative AI Resource for more information.
  final AgentPromptVariantGenAiResource? genAiResource;
  /// Contains inference configurations for the prompt variant. See Inference Configuration for more information.
  final AgentPromptVariantInferenceConfiguration? inferenceConfiguration;
  /// A list of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See Metadata for more information.
  final List<AgentPromptVariantMetadata>? metadatas;
  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a `gen_ai_resource` must be defined.
  final String? modelId;
  /// Name of the prompt variant.
  final String name;
  /// Contains configurations for the prompt template. See Template Configuration for more information.
  final AgentPromptVariantTemplateConfiguration? templateConfiguration;
  /// Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  final String templateType;

  /// Creates a new [AgentPromptVariant].
  /// [additionalModelRequestFields] Contains model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  /// [genAiResource] Specifies a generative AI resource with which to use the prompt. If this is not supplied, then a `gen_ai_resource` must be defined. See Generative AI Resource for more information.
  /// [inferenceConfiguration] Contains inference configurations for the prompt variant. See Inference Configuration for more information.
  /// [metadatas] A list of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See Metadata for more information.
  /// [modelId] Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a `gen_ai_resource` must be defined.
  /// [name] Name of the prompt variant.
  /// [templateConfiguration] Contains configurations for the prompt template. See Template Configuration for more information.
  /// [templateType] Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  AgentPromptVariant({
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
      'genAiResource': ?genAiResource == null ? null : genAiResource!.toMap(),
      'inferenceConfiguration': ?inferenceConfiguration == null ? null : inferenceConfiguration!.toMap(),
      'metadatas': ?metadatas == null ? null : pulumi.Input.encodeList<AgentPromptVariantMetadata, Map<String, dynamic>>(metadatas!, (value) => value.toMap()),
      'modelId': ?modelId,
      'name': name,
      'templateConfiguration': ?templateConfiguration == null ? null : templateConfiguration!.toMap(),
      'templateType': templateType,
    };
  }

  factory AgentPromptVariant.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariant(
      additionalModelRequestFields: map['additionalModelRequestFields'] == null ? null : map['additionalModelRequestFields'] as String,
      genAiResource: map['genAiResource'] == null ? null : AgentPromptVariantGenAiResource.fromMap((map['genAiResource'] as Map).cast<String, dynamic>()),
      inferenceConfiguration: map['inferenceConfiguration'] == null ? null : AgentPromptVariantInferenceConfiguration.fromMap((map['inferenceConfiguration'] as Map).cast<String, dynamic>()),
      metadatas: map['metadatas'] == null ? null : pulumi.Input.decodeList<AgentPromptVariantMetadata>(map['metadatas'], (value) => AgentPromptVariantMetadata.fromMap((value as Map).cast<String, dynamic>())),
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
      name: map['name'] as String,
      templateConfiguration: map['templateConfiguration'] == null ? null : AgentPromptVariantTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>()),
      templateType: map['templateType'] as String,
    );
  }
}

