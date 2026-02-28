// ignore_for_file: unused_element, unnecessary_cast


class VoiceConnectorStreamingMediaInsightsConfiguration {
  /// The media insights configuration that will be invoked by the Voice Connector.
  final String? configurationArn;
  /// When `true`, the media insights configuration is not enabled. Defaults to `false`.
  final bool? disabled;

  /// Creates a new [VoiceConnectorStreamingMediaInsightsConfiguration].
  /// [configurationArn] The media insights configuration that will be invoked by the Voice Connector.
  /// [disabled] When `true`, the media insights configuration is not enabled. Defaults to `false`.
  VoiceConnectorStreamingMediaInsightsConfiguration({
    this.configurationArn,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationArn': ?configurationArn,
      'disabled': ?disabled,
    };
  }

  factory VoiceConnectorStreamingMediaInsightsConfiguration.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorStreamingMediaInsightsConfiguration(
      configurationArn: map['configurationArn'] == null ? null : map['configurationArn'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}

