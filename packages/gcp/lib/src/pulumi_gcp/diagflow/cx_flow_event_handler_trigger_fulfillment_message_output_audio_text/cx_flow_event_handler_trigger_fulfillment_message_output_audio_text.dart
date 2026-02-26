// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool? allowPlaybackInterruption;

  /// The SSML text to be synthesized. For more information, see SSML.
  /// This field is part of a union field <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span> or <span pulumi-lang-nodejs="`ssml`" pulumi-lang-dotnet="`Ssml`" pulumi-lang-go="`ssml`" pulumi-lang-python="`ssml`" pulumi-lang-yaml="`ssml`" pulumi-lang-java="`ssml`">`ssml`</span> may be set.
  final String? ssml;

  /// The raw text to be synthesized.
  /// This field is part of a union field <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span> or <span pulumi-lang-nodejs="`ssml`" pulumi-lang-dotnet="`Ssml`" pulumi-lang-go="`ssml`" pulumi-lang-python="`ssml`" pulumi-lang-yaml="`ssml`" pulumi-lang-java="`ssml`">`ssml`</span> may be set.
  final String? text;

  CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPlaybackInterruptionValue = allowPlaybackInterruption;
    if (allowPlaybackInterruptionValue != null) {
      map['allowPlaybackInterruption'] = allowPlaybackInterruptionValue;
    }
    final ssmlValue = ssml;
    if (ssmlValue != null) {
      map['ssml'] = ssmlValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText.fromMap(
      Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      ssml: map['ssml'] == null ? null : map['ssml'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
