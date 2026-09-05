// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_streaming_media_insights_configuration.dart';

/// Input properties used for looking up and filtering VoiceConnectorStreaming resources.
class VoiceConnectorStreamingState {
  /// The retention period, in hours, for the Amazon Kinesis data.
  final pulumi.Input<int?>? dataRetention;
  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  final pulumi.Input<bool?>? disabled;
  /// The media insights configuration. See `mediaInsightsConfiguration`.
  final pulumi.Input<VoiceConnectorStreamingMediaInsightsConfiguration?>? mediaInsightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  final pulumi.Input<List<String>?>? streamingNotificationTargets;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String?>? voiceConnectorId;

  /// Creates a new [VoiceConnectorStreamingState].
  /// [dataRetention] The retention period, in hours, for the Amazon Kinesis data.
  /// [disabled] When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  /// [mediaInsightsConfiguration] The media insights configuration. See `mediaInsightsConfiguration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamingNotificationTargets] The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  const VoiceConnectorStreamingState({
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
      dataRetention: (() { final guardedValue = map['dataRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mediaInsightsConfiguration: (() { final guardedValue = map['mediaInsightsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingNotificationTargets: (() { final guardedValue = map['streamingNotificationTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      voiceConnectorId: (() { final guardedValue = map['voiceConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
