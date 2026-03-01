// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  ///
  /// <a name="nested_knowledge_connector_settings_trigger_fulfillment_messages_mixed_audio"></a>The `mixed_audio` block contains:
  final bool? allowPlaybackInterruption;

  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final String audioUri;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio].
  /// [allowPlaybackInterruption] (Output)
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio({
    this.allowPlaybackInterruption,
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audioUri': audioUri,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      audioUri: map['audioUri'] as String,
    );
  }
}
