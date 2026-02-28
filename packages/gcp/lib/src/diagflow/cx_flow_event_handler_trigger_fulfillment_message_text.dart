// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentMessageText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool? allowPlaybackInterruption;

  /// A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  /// required: true
  final List<String>? texts;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessageText].
  /// [allowPlaybackInterruption] (Output)
  /// [texts] A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  CxFlowEventHandlerTriggerFulfillmentMessageText({
    this.allowPlaybackInterruption,
    this.texts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPlaybackInterruptionValue = allowPlaybackInterruption;
    if (allowPlaybackInterruptionValue != null) {
      map['allowPlaybackInterruption'] = allowPlaybackInterruptionValue;
    }
    final textsValue = texts;
    if (textsValue != null) {
      map['texts'] = textsValue;
    }
    return map;
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageText.fromMap(
      Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageText(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      texts:
          map['texts'] == null ? null : (map['texts'] as List).cast<String>(),
    );
  }
}
