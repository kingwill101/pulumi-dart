// ignore_for_file: unused_element, unnecessary_cast

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment {
  /// (Output)
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final bool? allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// A base64-encoded string.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final String? audio;

  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  /// This field is part of a union field `content`: Only one of `audio` or `uri` may be set.
  final String? uri;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment].
  /// [allowPlaybackInterruption] (Output)
  /// [audio] Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// [uri] Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audio': ?audio,
      'uri': ?uri,
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      audio: map['audio'] == null ? null : map['audio'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
