import 'package:pulumi/pulumi.dart' as pulumi;
import '../voice_connector_streaming_media_insights_configuration/voice_connector_streaming_media_insights_configuration.dart';
import 'voice_connector_streaming_args.dart';

/// Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis.
/// It also sets the retention period, in hours, for the Amazon Kinesis data.
///
/// ## Example Usage
///
///
///
/// ### Example Usage With Media Insights
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Streaming using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorStreaming extends pulumi.CustomResource {
  /// The retention period, in hours, for the Amazon Kinesis data.
  late final pulumi.Output<int> dataRetention;

  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  late final pulumi.Output<bool?> disabled;

  /// The media insights configuration. See `media_insights_configuration`.
  late final pulumi.Output<VoiceConnectorStreamingMediaInsightsConfiguration?>
      mediaInsightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  late final pulumi.Output<List<String>?> streamingNotificationTargets;

  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  VoiceConnectorStreaming(
    String name, {
    VoiceConnectorStreamingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataRetention = registerOutput<int>('dataRetention');
    this.disabled = registerOutput<bool?>('disabled');
    this.mediaInsightsConfiguration =
        registerOutput<VoiceConnectorStreamingMediaInsightsConfiguration?>(
            'mediaInsightsConfiguration');
    this.region = registerOutput<String>('region');
    this.streamingNotificationTargets =
        registerOutput<List<String>?>('streamingNotificationTargets');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
