// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_prompt_variant_gen_ai_resource/agent_prompt_variant_gen_ai_resource.dart';
import '../agent_prompt_variant_inference_configuration/agent_prompt_variant_inference_configuration.dart';
import '../agent_prompt_variant_metadata/agent_prompt_variant_metadata.dart';
import '../agent_prompt_variant_template_configuration/agent_prompt_variant_template_configuration.dart';

class AgentPromptVariant {
  /// Contains model-specific inference configurations that aren’t in the inferenceConfiguration field. To see model-specific inference parameters, see [Inference request parameters and response fields for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
  final String? additionalModelRequestFields;

  /// Specifies a generative AI resource with which to use the prompt. If this is not supplied, then a <span pulumi-lang-nodejs="`genAiResource`" pulumi-lang-dotnet="`GenAiResource`" pulumi-lang-go="`genAiResource`" pulumi-lang-python="`gen_ai_resource`" pulumi-lang-yaml="`genAiResource`" pulumi-lang-java="`genAiResource`">`gen_ai_resource`</span> must be defined. See Generative AI Resource for more information.
  final AgentPromptVariantGenAiResource? genAiResource;

  /// Contains inference configurations for the prompt variant. See Inference Configuration for more information.
  final AgentPromptVariantInferenceConfiguration? inferenceConfiguration;

  /// A list of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant. See Metadata for more information.
  final List<AgentPromptVariantMetadata>? metadatas;

  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) with which to run inference on the prompt. If this is not supplied, then a <span pulumi-lang-nodejs="`genAiResource`" pulumi-lang-dotnet="`GenAiResource`" pulumi-lang-go="`genAiResource`" pulumi-lang-python="`gen_ai_resource`" pulumi-lang-yaml="`genAiResource`" pulumi-lang-java="`genAiResource`">`gen_ai_resource`</span> must be defined.
  final String? modelId;

  /// Name of the prompt variant.
  final String name;

  /// Contains configurations for the prompt template. See Template Configuration for more information.
  final AgentPromptVariantTemplateConfiguration? templateConfiguration;

  /// Type of prompt template to use. Valid values: `CHAT`, `TEXT`.
  final String templateType;

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
    final map = <String, dynamic>{};
    final additionalModelRequestFieldsValue = additionalModelRequestFields;
    if (additionalModelRequestFieldsValue != null) {
      map['additionalModelRequestFields'] = additionalModelRequestFieldsValue;
    }
    final genAiResourceValue = genAiResource;
    if (genAiResourceValue != null) {
      map['genAiResource'] = genAiResourceValue.toMap();
    }
    final inferenceConfigurationValue = inferenceConfiguration;
    if (inferenceConfigurationValue != null) {
      map['inferenceConfiguration'] = inferenceConfigurationValue.toMap();
    }
    final metadatasValue = metadatas;
    if (metadatasValue != null) {
      map['metadatas'] =
          Input.encodeList<AgentPromptVariantMetadata, Map<String, dynamic>>(
              metadatasValue, (value) => value.toMap());
    }
    final modelIdValue = modelId;
    if (modelIdValue != null) {
      map['modelId'] = modelIdValue;
    }
    map['name'] = name;
    final templateConfigurationValue = templateConfiguration;
    if (templateConfigurationValue != null) {
      map['templateConfiguration'] = templateConfigurationValue.toMap();
    }
    map['templateType'] = templateType;
    return map;
  }

  factory AgentPromptVariant.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariant(
      additionalModelRequestFields: map['additionalModelRequestFields'] == null
          ? null
          : map['additionalModelRequestFields'] as String,
      genAiResource: map['genAiResource'] == null
          ? null
          : AgentPromptVariantGenAiResource.fromMap(
              (map['genAiResource'] as Map).cast<String, dynamic>()),
      inferenceConfiguration: map['inferenceConfiguration'] == null
          ? null
          : AgentPromptVariantInferenceConfiguration.fromMap(
              (map['inferenceConfiguration'] as Map).cast<String, dynamic>()),
      metadatas: map['metadatas'] == null
          ? null
          : Input.decodeList<AgentPromptVariantMetadata>(
              map['metadatas'],
              (value) => AgentPromptVariantMetadata.fromMap(
                  (value as Map).cast<String, dynamic>())),
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
      name: map['name'] as String,
      templateConfiguration: map['templateConfiguration'] == null
          ? null
          : AgentPromptVariantTemplateConfiguration.fromMap(
              (map['templateConfiguration'] as Map).cast<String, dynamic>()),
      templateType: map['templateType'] as String,
    );
  }
}
