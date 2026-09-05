// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chime_voice_connector_logging_voice_connector_logging_args_doc}
/// The set of arguments for VoiceConnectorLogging.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_logging_voice_connector_logging_args_doc}
class VoiceConnectorLoggingArgs {
  /// When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  final pulumi.Input<bool?>? enableMediaMetricLogs;
  /// When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  final pulumi.Input<bool?>? enableSipLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorLoggingArgs].
  /// [enableMediaMetricLogs] When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  /// [enableSipLogs] When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  const VoiceConnectorLoggingArgs({
    this.enableMediaMetricLogs,
    this.enableSipLogs,
    this.region,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMediaMetricLogs': ?enableMediaMetricLogs,
      'enableSipLogs': ?enableSipLogs,
      'region': ?region,
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorLoggingArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorLoggingArgs(
      enableMediaMetricLogs: (() { final guardedValue = map['enableMediaMetricLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSipLogs: (() { final guardedValue = map['enableSipLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceConnectorId: pulumi.Input.fromValue(map['voiceConnectorId'] as String),
    );
  }
}
