// ignore_for_file: unused_element, unnecessary_cast

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool? allowPlaybackInterruption;

  /// A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  /// required: true
  final List<String>? texts;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageText].
  /// [allowPlaybackInterruption] (Output)
  /// [texts] A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageText({
    this.allowPlaybackInterruption,
    this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'texts': ?texts,
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageText.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageText(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      texts: map['texts'] == null
          ? null
          : (map['texts'] as List).cast<String>(),
    );
  }
}
