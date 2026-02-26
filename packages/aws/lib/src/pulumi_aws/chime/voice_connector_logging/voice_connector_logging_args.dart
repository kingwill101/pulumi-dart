// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VoiceConnectorLogging.
class VoiceConnectorLoggingArgs {
  /// When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  final Input<bool>? enableMediaMetricLogs;

  /// When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  final Input<bool>? enableSipLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Chime Voice Connector ID.
  final Input<String> voiceConnectorId;

  VoiceConnectorLoggingArgs({
    this.enableMediaMetricLogs,
    this.enableSipLogs,
    this.region,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableMediaMetricLogsValue = enableMediaMetricLogs;
    if (enableMediaMetricLogsValue != null) {
      map['enableMediaMetricLogs'] = enableMediaMetricLogsValue;
    }
    final enableSipLogsValue = enableSipLogs;
    if (enableSipLogsValue != null) {
      map['enableSipLogs'] = enableSipLogsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorLoggingArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorLoggingArgs(
      enableMediaMetricLogs:
          Input.asOptionalInput<bool>(map['enableMediaMetricLogs']),
      enableSipLogs: Input.asOptionalInput<bool>(map['enableSipLogs']),
      region: Input.asOptionalInput<String>(map['region']),
      voiceConnectorId: Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
