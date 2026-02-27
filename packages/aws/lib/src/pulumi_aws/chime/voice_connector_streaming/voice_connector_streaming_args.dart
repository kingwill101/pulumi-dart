// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../voice_connector_streaming_media_insights_configuration/voice_connector_streaming_media_insights_configuration.dart';

/// The set of arguments for VoiceConnectorStreaming.
class VoiceConnectorStreamingArgs {
  /// The retention period, in hours, for the Amazon Kinesis data.
  final pulumi.Input<int> dataRetention;

  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  final pulumi.Input<bool>? disabled;

  /// The media insights configuration. See `media_insights_configuration`.
  final pulumi.Input<VoiceConnectorStreamingMediaInsightsConfiguration>?
      mediaInsightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  final pulumi.Input<List<String>>? streamingNotificationTargets;

  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

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
      map['mediaInsightsConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
      dataRetention: pulumi.Input.asInput<int>(map['dataRetention']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      mediaInsightsConfiguration: pulumi.Input.asOptionalInput<
              VoiceConnectorStreamingMediaInsightsConfiguration>(
          map['mediaInsightsConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      streamingNotificationTargets: pulumi.Input.asOptionalInput<List<String>>(
          map['streamingNotificationTargets']),
      voiceConnectorId: pulumi.Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
