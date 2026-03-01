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
    pulumi.Output<bool>? enableMediaMetricLogs,
    pulumi.Output<bool>? enableSipLogs,
    pulumi.Output<String>? region,
    pulumi.Output<String>? voiceConnectorId,
  }) :
      enableMediaMetricLogs = pulumi.Input.asOptionalInput<bool>(enableMediaMetricLogs),
      enableSipLogs = pulumi.Input.asOptionalInput<bool>(enableSipLogs),
      region = pulumi.Input.asOptionalInput<String>(region),
      voiceConnectorId = pulumi.Input.asOptionalInput<String>(voiceConnectorId);

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
      enableMediaMetricLogs: map['enableMediaMetricLogs'] == null ? null : pulumi.Output.create<bool>(map['enableMediaMetricLogs'] as bool),
      enableSipLogs: map['enableSipLogs'] == null ? null : pulumi.Output.create<bool>(map['enableSipLogs'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      voiceConnectorId: map['voiceConnectorId'] == null ? null : pulumi.Output.create<String>(map['voiceConnectorId'] as String),
    );
  }
}

