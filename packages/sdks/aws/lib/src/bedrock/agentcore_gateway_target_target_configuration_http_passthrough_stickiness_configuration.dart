// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration {
  /// Additional headers to include in session affinity routing.
  final pulumi.Input<List<String>?>? compositeIdentifiers;
  /// Expression identifying where to extract the session identifier from the request (for example, `$context.header.x-session-id`).
  final pulumi.Input<String> identifier;
  /// Session stickiness timeout, in seconds. Valid values range from 1 to 86400.
  final pulumi.Input<int?>? timeout;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration].
  /// [compositeIdentifiers] Additional headers to include in session affinity routing.
  /// [identifier] Expression identifying where to extract the session identifier from the request (for example, `$context.header.x-session-id`).
  /// [timeout] Session stickiness timeout, in seconds. Valid values range from 1 to 86400.
  const AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration({
    this.compositeIdentifiers,
    required this.identifier,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeIdentifiers': ?compositeIdentifiers,
      'identifier': identifier,
      'timeout': ?timeout,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationHttpPassthroughStickinessConfiguration(
      compositeIdentifiers: (() { final guardedValue = map['compositeIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
