import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_logging_args.dart';

/// Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Logging using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorLogging:VoiceConnectorLogging default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorLogging extends pulumi.CustomResource {
  /// When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  late final pulumi.Output<bool?> enableMediaMetricLogs;

  /// When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  late final pulumi.Output<bool?> enableSipLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  VoiceConnectorLogging(
    String name, {
    VoiceConnectorLoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorLogging:VoiceConnectorLogging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enableMediaMetricLogs = registerOutput<bool?>('enableMediaMetricLogs');
    this.enableSipLogs = registerOutput<bool?>('enableSipLogs');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
