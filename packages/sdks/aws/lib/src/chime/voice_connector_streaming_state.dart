// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_streaming_media_insights_configuration.dart';

/// Input properties used for looking up and filtering VoiceConnectorStreaming resources.
class VoiceConnectorStreamingState {
  /// The retention period, in hours, for the Amazon Kinesis data.
  final pulumi.Input<int>? dataRetention;
  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  final pulumi.Input<bool>? disabled;
  /// The media insights configuration. See `media_insights_configuration`.
  final pulumi.Input<VoiceConnectorStreamingMediaInsightsConfiguration>? mediaInsightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  final pulumi.Input<List<String>>? streamingNotificationTargets;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String>? voiceConnectorId;

  /// Creates a new [VoiceConnectorStreamingState].
  /// [dataRetention] The retention period, in hours, for the Amazon Kinesis data.
  /// [disabled] When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  /// [mediaInsightsConfiguration] The media insights configuration. See `media_insights_configuration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamingNotificationTargets] The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  VoiceConnectorStreamingState({
    this.dataRetention,
    this.disabled,
    this.mediaInsightsConfiguration,
    this.region,
    this.streamingNotificationTargets,
    this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRetention': ?dataRetention,
      'disabled': ?disabled,
      'mediaInsightsConfiguration': ?pulumi.Input.mapOptionalInputValue<VoiceConnectorStreamingMediaInsightsConfiguration, Map<String, dynamic>>(mediaInsightsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'streamingNotificationTargets': ?streamingNotificationTargets,
      'voiceConnectorId': ?voiceConnectorId,
    };
  }

  factory VoiceConnectorStreamingState.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorStreamingState(
      dataRetention: map['dataRetention'] == null ? null : ((map['dataRetention'] as int).input()).input(),
      disabled: map['disabled'] == null ? null : ((map['disabled'] as bool).input()).input(),
      mediaInsightsConfiguration: map['mediaInsightsConfiguration'] == null ? null : ((VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((map['mediaInsightsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      streamingNotificationTargets: map['streamingNotificationTargets'] == null ? null : (((map['streamingNotificationTargets'] as List).cast<String>()).input()).input(),
      voiceConnectorId: map['voiceConnectorId'] == null ? null : ((map['voiceConnectorId'] as String).input()).input(),
    );
  }
}

