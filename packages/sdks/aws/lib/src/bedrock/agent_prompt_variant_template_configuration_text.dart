// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_text_cache_point.dart';
import 'agent_prompt_variant_template_configuration_text_input_variable.dart';

class AgentPromptVariantTemplateConfigurationText {
  final pulumi.Input<AgentPromptVariantTemplateConfigurationTextCachePoint>? cachePoint;
  final pulumi.Input<List<AgentPromptVariantTemplateConfigurationTextInputVariable>>? inputVariables;
  final pulumi.Input<String> text;

  /// Creates a new [AgentPromptVariantTemplateConfigurationText].
  /// [cachePoint] Optional.
  /// [inputVariables] Optional.
  /// [text] Required.
  AgentPromptVariantTemplateConfigurationText({
    this.cachePoint,
    this.inputVariables,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationTextCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariantTemplateConfigurationTextInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationTextInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
    };
  }

  factory AgentPromptVariantTemplateConfigurationText.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationText(
      cachePoint: map['cachePoint'] == null ? null : ((AgentPromptVariantTemplateConfigurationTextCachePoint.fromMap((map['cachePoint']! as Map).cast<String, dynamic>())).input()).input(),
      inputVariables: map['inputVariables'] == null ? null : ((pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationTextInputVariable>(map['inputVariables']!, (value) => AgentPromptVariantTemplateConfigurationTextInputVariable.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      text: (map['text'] as String).input(),
    );
  }
}

