// ignore_for_file: unused_element, unnecessary_cast

class VoiceConnectorStreamingMediaInsightsConfiguration {
  /// The media insights configuration that will be invoked by the Voice Connector.
  final String? configurationArn;

  /// When `true`, the media insights configuration is not enabled. Defaults to `false`.
  final bool? disabled;

  VoiceConnectorStreamingMediaInsightsConfiguration({
    this.configurationArn,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationArnValue = configurationArn;
    if (configurationArnValue != null) {
      map['configurationArn'] = configurationArnValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory VoiceConnectorStreamingMediaInsightsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return VoiceConnectorStreamingMediaInsightsConfiguration(
      configurationArn: map['configurationArn'] == null
          ? null
          : map['configurationArn'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
