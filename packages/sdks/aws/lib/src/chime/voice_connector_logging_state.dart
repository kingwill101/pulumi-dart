// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VoiceConnectorLogging resources.
class VoiceConnectorLoggingState {
  /// When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  final pulumi.Input<bool>? enableMediaMetricLogs;
  /// When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  final pulumi.Input<bool>? enableSipLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String>? voiceConnectorId;

  /// Creates a new [VoiceConnectorLoggingState].
  /// [enableMediaMetricLogs] When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  /// [enableSipLogs] When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  VoiceConnectorLoggingState({
    this.enableMediaMetricLogs,
    this.enableSipLogs,
    this.region,
    this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMediaMetricLogs': ?enableMediaMetricLogs,
      'enableSipLogs': ?enableSipLogs,
      'region': ?region,
      'voiceConnectorId': ?voiceConnectorId,
    };
  }

  factory VoiceConnectorLoggingState.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorLoggingState(
      enableMediaMetricLogs: map['enableMediaMetricLogs'] == null ? null : (map['enableMediaMetricLogs'] as bool).input(),
      enableSipLogs: map['enableSipLogs'] == null ? null : (map['enableSipLogs'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      voiceConnectorId: map['voiceConnectorId'] == null ? null : (map['voiceConnectorId'] as String).input(),
    );
  }
}

