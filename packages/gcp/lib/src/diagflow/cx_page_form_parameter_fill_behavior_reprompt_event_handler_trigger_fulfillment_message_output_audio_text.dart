// ignore_for_file: unused_element, unnecessary_cast


class CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool? allowPlaybackInterruption;
  /// The SSML text to be synthesized. For more information, see SSML.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final String? ssml;
  /// The raw text to be synthesized.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final String? text;

  /// Creates a new [CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioText].
  /// [allowPlaybackInterruption] (Output)
  /// [ssml] The SSML text to be synthesized. For more information, see SSML.
  /// [text] The raw text to be synthesized.
  CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'ssml': ?ssml,
      'text': ?text,
    };
  }

  factory CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioText.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageOutputAudioText(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null ? null : map['allowPlaybackInterruption'] as bool,
      ssml: map['ssml'] == null ? null : map['ssml'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}

