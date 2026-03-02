// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VoiceConnectorStreamingMediaInsightsConfiguration {
  /// The media insights configuration that will be invoked by the Voice Connector.
  final pulumi.Input<String>? configurationArn;
  /// When `true`, the media insights configuration is not enabled. Defaults to `false`.
  final pulumi.Input<bool>? disabled;

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
      configurationArn: map['configurationArn'] == null ? null : ((map['configurationArn'] as String).input()).input(),
      disabled: map['disabled'] == null ? null : ((map['disabled'] as bool).input()).input(),
    );
  }
}

