// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_text_cache_point.dart';
import 'agent_prompt_variant_template_configuration_text_input_variable.dart';

class AgentPromptVariantTemplateConfigurationText {
  final AgentPromptVariantTemplateConfigurationTextCachePoint? cachePoint;
  final List<AgentPromptVariantTemplateConfigurationTextInputVariable>? inputVariables;
  final String text;

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
      'cachePoint': ?cachePoint == null ? null : cachePoint!.toMap(),
      'inputVariables': ?inputVariables == null ? null : pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationTextInputVariable, Map<String, dynamic>>(inputVariables!, (value) => value.toMap()),
      'text': text,
    };
  }

  factory AgentPromptVariantTemplateConfigurationText.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationText(
      cachePoint: map['cachePoint'] == null ? null : AgentPromptVariantTemplateConfigurationTextCachePoint.fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      inputVariables: map['inputVariables'] == null ? null : pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationTextInputVariable>(map['inputVariables'], (value) => AgentPromptVariantTemplateConfigurationTextInputVariable.fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}

