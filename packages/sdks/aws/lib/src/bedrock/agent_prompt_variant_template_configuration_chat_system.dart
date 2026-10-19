// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_system_cache_point.dart';

class AgentPromptVariantTemplateConfigurationChatSystem {
  /// Cache checkpoint within the system prompt. See `cachePoint` Block for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatSystemCachePoint?>? cachePoint;
  /// Text in the system prompt.
  final pulumi.Input<String?>? text;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatSystem].
  /// [cachePoint] Cache checkpoint within the system prompt. See `cachePoint` Block for more information.
  /// [text] Text in the system prompt.
  const AgentPromptVariantTemplateConfigurationChatSystem({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatSystemCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'text': ?text,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatSystem.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatSystem(
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatSystemCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
