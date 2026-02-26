// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../voice_connector_streaming_media_insights_configuration/voice_connector_streaming_media_insights_configuration.dart';

/// The set of arguments for VoiceConnectorStreaming.
class VoiceConnectorStreamingArgs {
  /// The retention period, in hours, for the Amazon Kinesis data.
  final Input<int> dataRetention;

  /// When true, media streaming to Amazon Kinesis is turned off. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final Input<bool>? disabled;

  /// The media insights configuration. See <span pulumi-lang-nodejs="`mediaInsightsConfiguration`" pulumi-lang-dotnet="`MediaInsightsConfiguration`" pulumi-lang-go="`mediaInsightsConfiguration`" pulumi-lang-python="`media_insights_configuration`" pulumi-lang-yaml="`mediaInsightsConfiguration`" pulumi-lang-java="`mediaInsightsConfiguration`">`media_insights_configuration`</span>.
  final Input<VoiceConnectorStreamingMediaInsightsConfiguration>?
      mediaInsightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  final Input<List<String>>? streamingNotificationTargets;

  /// The Amazon Chime Voice Connector ID.
  final Input<String> voiceConnectorId;

  VoiceConnectorStreamingArgs({
    required this.dataRetention,
    this.disabled,
    this.mediaInsightsConfiguration,
    this.region,
    this.streamingNotificationTargets,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataRetention'] = dataRetention;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final mediaInsightsConfigurationValue = mediaInsightsConfiguration;
    if (mediaInsightsConfigurationValue != null) {
      map['mediaInsightsConfiguration'] = Input.mapOptionalInputValue<
              VoiceConnectorStreamingMediaInsightsConfiguration,
              Map<String, dynamic>>(
          mediaInsightsConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final streamingNotificationTargetsValue = streamingNotificationTargets;
    if (streamingNotificationTargetsValue != null) {
      map['streamingNotificationTargets'] = streamingNotificationTargetsValue;
    }
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorStreamingArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorStreamingArgs(
      dataRetention: Input.asInput<int>(map['dataRetention']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      mediaInsightsConfiguration: Input.asOptionalInput<
              VoiceConnectorStreamingMediaInsightsConfiguration>(
          map['mediaInsightsConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      streamingNotificationTargets: Input.asOptionalInput<List<String>>(
          map['streamingNotificationTargets']),
      voiceConnectorId: Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
