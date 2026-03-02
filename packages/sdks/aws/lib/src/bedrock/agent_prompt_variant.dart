// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_gen_ai_resource.dart';
import 'agent_prompt_variant_inference_configuration.dart';
import 'agent_prompt_variant_metadata.dart';
import 'agent_prompt_variant_template_configuration.dart';

class AgentPromptVariant {
  /// Contains model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  final pulumi.Input<String>? additionalModelRequestFields;
  /// Specifies a generative AI resource with which to use the prompt. If this is not supplied, then a `gen_ai_resource` must be defined. See Generative AI Resource for more information.
  final pulumi.Input<AgentPromptVariantGenAiResource>? genAiResource;
  /// Contains inference configurations for the prompt variant. See Inference Configuration for more information.
  final pulumi.Input<AgentPromptVariantInferenceConfiguration>? inferenceConfiguration;
  /// A list of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See Metadata for more information.
  final pulumi.Input<List<AgentPromptVariantMetadata>>? metadatas;
  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a `gen_ai_resource` must be defined.
  final pulumi.Input<String>? modelId;
  /// Name of the prompt variant.
  final pulumi.Input<String> name;
  /// Contains configurations for the prompt template. See Template Configuration for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfiguration>? templateConfiguration;
  /// Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  final pulumi.Input<String> templateType;

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
      additionalModelRequestFields: map['additionalModelRequestFields'] == null ? null : (map['additionalModelRequestFields'] as String).input(),
      genAiResource: map['genAiResource'] == null ? null : (AgentPromptVariantGenAiResource.fromMap((map['genAiResource'] as Map).cast<String, dynamic>())).input(),
      inferenceConfiguration: map['inferenceConfiguration'] == null ? null : (AgentPromptVariantInferenceConfiguration.fromMap((map['inferenceConfiguration'] as Map).cast<String, dynamic>())).input(),
      metadatas: map['metadatas'] == null ? null : (pulumi.Input.decodeList<AgentPromptVariantMetadata>(map['metadatas'], (value) => AgentPromptVariantMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modelId: map['modelId'] == null ? null : (map['modelId'] as String).input(),
      name: (map['name'] as String).input(),
      templateConfiguration: map['templateConfiguration'] == null ? null : (AgentPromptVariantTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>())).input(),
      templateType: (map['templateType'] as String).input(),
    );
  }
}

