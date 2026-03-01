// ignore_for_file: unused_element, unnecessary_cast

class CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudio {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  ///
  /// <a name="nested_knowledge_connector_settings_trigger_fulfillment_messages_mixed_audio"></a>The `mixed_audio` block contains:
  final bool? allowPlaybackInterruption;

  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final String audioUri;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudio].
  /// [allowPlaybackInterruption] (Output)
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudio({
    this.allowPlaybackInterruption,
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audioUri': audioUri,
    };
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudio.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowTransitionRouteTriggerFulfillmentMessagePlayAudio(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      audioUri: map['audioUri'] as String,
    );
  }
}
