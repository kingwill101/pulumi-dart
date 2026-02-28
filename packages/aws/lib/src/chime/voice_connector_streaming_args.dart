// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_streaming_media_insights_configuration.dart';

/// {@template pulumi_chime_voice_connector_streaming_voice_connector_streaming_args_doc}
/// The set of arguments for VoiceConnectorStreaming.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_streaming_voice_connector_streaming_args_doc}
class VoiceConnectorStreamingArgs {
  /// The retention period, in hours, for the Amazon Kinesis data.
  final pulumi.Input<int> dataRetention;
  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  final pulumi.Input<bool>? disabled;
  /// The media insights configuration. See `media_insights_configuration`.
  final pulumi.Input<VoiceConnectorStreamingMediaInsightsConfiguration>? mediaInsightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  final pulumi.Input<List<String>>? streamingNotificationTargets;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorStreamingArgs].
  /// [dataRetention] The retention period, in hours, for the Amazon Kinesis data.
  /// [disabled] When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  /// [mediaInsightsConfiguration] The media insights configuration. See `media_insights_configuration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamingNotificationTargets] The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  VoiceConnectorStreamingArgs({
    required int dataRetention,
    bool? disabled,
    VoiceConnectorStreamingMediaInsightsConfiguration? mediaInsightsConfiguration,
    String? region,
    List<String>? streamingNotificationTargets,
    required String voiceConnectorId,
  }) :
      dataRetention = pulumi.Input.asInput<int>(dataRetention),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      mediaInsightsConfiguration = pulumi.Input.asOptionalInput<VoiceConnectorStreamingMediaInsightsConfiguration>(mediaInsightsConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamingNotificationTargets = pulumi.Input.asOptionalInput<List<String>>(streamingNotificationTargets),
      voiceConnectorId = pulumi.Input.asInput<String>(voiceConnectorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRetention': dataRetention,
      'disabled': ?disabled,
      'mediaInsightsConfiguration': ?pulumi.Input.mapOptionalInputValue<VoiceConnectorStreamingMediaInsightsConfiguration, Map<String, dynamic>>(mediaInsightsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'streamingNotificationTargets': ?streamingNotificationTargets,
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorStreamingArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorStreamingArgs(
      dataRetention: map['dataRetention'] as int,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      mediaInsightsConfiguration: map['mediaInsightsConfiguration'] == null ? null : VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((map['mediaInsightsConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      streamingNotificationTargets: map['streamingNotificationTargets'] == null ? null : (map['streamingNotificationTargets'] as List).cast<String>(),
      voiceConnectorId: map['voiceConnectorId'] as String,
    );
  }
}

