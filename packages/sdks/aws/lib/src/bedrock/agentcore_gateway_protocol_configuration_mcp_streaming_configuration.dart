// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration {
  /// Boolean indicating whether response streaming is enabled for the gateway.
  final pulumi.Input<bool>? enableResponseStreaming;

  /// Creates a new [AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration].
  /// [enableResponseStreaming] Boolean indicating whether response streaming is enabled for the gateway.
  const AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration({
    this.enableResponseStreaming,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResponseStreaming': ?enableResponseStreaming,
    };
  }

  factory AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration(
      enableResponseStreaming: (() { final guardedValue = map['enableResponseStreaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
