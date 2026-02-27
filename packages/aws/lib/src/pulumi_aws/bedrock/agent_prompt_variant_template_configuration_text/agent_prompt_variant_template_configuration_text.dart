// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_prompt_variant_template_configuration_text_cache_point/agent_prompt_variant_template_configuration_text_cache_point.dart';
import '../agent_prompt_variant_template_configuration_text_input_variable/agent_prompt_variant_template_configuration_text_input_variable.dart';

class AgentPromptVariantTemplateConfigurationText {
  final AgentPromptVariantTemplateConfigurationTextCachePoint? cachePoint;
  final List<AgentPromptVariantTemplateConfigurationTextInputVariable>?
      inputVariables;
  final String text;

  AgentPromptVariantTemplateConfigurationText({
    this.cachePoint,
    this.inputVariables,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cachePointValue = cachePoint;
    if (cachePointValue != null) {
      map['cachePoint'] = cachePointValue.toMap();
    }
    final inputVariablesValue = inputVariables;
    if (inputVariablesValue != null) {
      map['inputVariables'] = pulumi.Input.encodeList<
          AgentPromptVariantTemplateConfigurationTextInputVariable,
          Map<String, dynamic>>(inputVariablesValue, (value) => value.toMap());
    }
    map['text'] = text;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationText.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationText(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationTextCachePoint.fromMap(
              (map['cachePoint'] as Map).cast<String, dynamic>()),
      inputVariables: map['inputVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentPromptVariantTemplateConfigurationTextInputVariable>(
              map['inputVariables'],
              (value) =>
                  AgentPromptVariantTemplateConfigurationTextInputVariable
                      .fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
