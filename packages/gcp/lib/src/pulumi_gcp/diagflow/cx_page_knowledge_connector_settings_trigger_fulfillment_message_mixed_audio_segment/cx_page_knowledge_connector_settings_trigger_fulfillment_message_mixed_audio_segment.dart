// ignore_for_file: unused_element, unnecessary_cast

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment {
  /// (Output)
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final bool? allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  /// A base64-encoded string.
  /// This field is part of a union field <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span>: Only one of <span pulumi-lang-nodejs="`audio`" pulumi-lang-dotnet="`Audio`" pulumi-lang-go="`audio`" pulumi-lang-python="`audio`" pulumi-lang-yaml="`audio`" pulumi-lang-java="`audio`">`audio`</span> or <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> may be set.
  final String? audio;

  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  /// This field is part of a union field <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span>: Only one of <span pulumi-lang-nodejs="`audio`" pulumi-lang-dotnet="`Audio`" pulumi-lang-go="`audio`" pulumi-lang-python="`audio`" pulumi-lang-yaml="`audio`" pulumi-lang-java="`audio`">`audio`</span> or <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> may be set.
  final String? uri;

  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPlaybackInterruptionValue = allowPlaybackInterruption;
    if (allowPlaybackInterruptionValue != null) {
      map['allowPlaybackInterruption'] = allowPlaybackInterruptionValue;
    }
    final audioValue = audio;
    if (audioValue != null) {
      map['audio'] = audioValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap(
      Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null
          ? null
          : map['allowPlaybackInterruption'] as bool,
      audio: map['audio'] == null ? null : map['audio'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
