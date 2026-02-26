// ignore_for_file: unused_element, unnecessary_cast

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudio {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedKnowledgeConnectorSettingsTriggerFulfillmentMessagesMixedAudio"" pulumi-lang-dotnet=""NestedKnowledgeConnectorSettingsTriggerFulfillmentMessagesMixedAudio"" pulumi-lang-go=""nestedKnowledgeConnectorSettingsTriggerFulfillmentMessagesMixedAudio"" pulumi-lang-python=""nested_knowledge_connector_settings_trigger_fulfillment_messages_mixed_audio"" pulumi-lang-yaml=""nestedKnowledgeConnectorSettingsTriggerFulfillmentMessagesMixedAudio"" pulumi-lang-java=""nestedKnowledgeConnectorSettingsTriggerFulfillmentMessagesMixedAudio"">"nested_knowledge_connector_settings_trigger_fulfillment_messages_mixed_audio"</span>></a>The <span pulumi-lang-nodejs="`mixedAudio`" pulumi-lang-dotnet="`MixedAudio`" pulumi-lang-go="`mixedAudio`" pulumi-lang-python="`mixed_audio`" pulumi-lang-yaml="`mixedAudio`" pulumi-lang-java="`mixedAudio`">`mixed_audio`</span> block contains:
  final bool? allowPlaybackInterruption;

  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final String audioUri;

  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudio({
    this.allowPlaybackInterruption,
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPlaybackInterruptionValue = allowPlaybackInterruption;
    if (allowPlaybackInterruptionValue != null) {
      map['allowPlaybackInterruption'] = allowPlaybackInterruptionValue;
    }
    map['audioUri'] = audioUri;
    return map;
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudio.fromMap(
      Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessagePlayAudio(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      audioUri: map['audioUri'] as String,
    );
  }
}
