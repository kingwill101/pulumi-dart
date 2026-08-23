// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration {
  /// Integer value for session timeout in seconds. Must be between 900 and 28800.
  final pulumi.Input<int>? sessionTimeoutInSeconds;

  /// Creates a new [AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration].
  /// [sessionTimeoutInSeconds] Integer value for session timeout in seconds. Must be between 900 and 28800.
  const AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration({
    this.sessionTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sessionTimeoutInSeconds': ?sessionTimeoutInSeconds,
    };
  }

  factory AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration(
      sessionTimeoutInSeconds: (() { final guardedValue = map['sessionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
