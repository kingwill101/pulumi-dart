// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_memory_agentcore_memory_configuration_retrieval_config.dart';

class AgentcoreHarnessMemoryAgentcoreMemoryConfiguration {
  /// Actor ID for memory sessions.
  final pulumi.Input<String?>? actorId;
  /// ARN of the AgentCore memory resource.
  final pulumi.Input<String> arn;
  /// Number of messages to retrieve from memory.
  final pulumi.Input<int?>? messagesCount;
  /// Retrieval configuration parameters. See `retrievalConfig` Block below.
  final pulumi.Input<AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig?>? retrievalConfig;

  /// Creates a new [AgentcoreHarnessMemoryAgentcoreMemoryConfiguration].
  /// [actorId] Actor ID for memory sessions.
  /// [arn] ARN of the AgentCore memory resource.
  /// [messagesCount] Number of messages to retrieve from memory.
  /// [retrievalConfig] Retrieval configuration parameters. See `retrievalConfig` Block below.
  const AgentcoreHarnessMemoryAgentcoreMemoryConfiguration({
    this.actorId,
    required this.arn,
    this.messagesCount,
    this.retrievalConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': ?actorId,
      'arn': arn,
      'messagesCount': ?messagesCount,
      'retrievalConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig, Map<String, dynamic>>(retrievalConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessMemoryAgentcoreMemoryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryAgentcoreMemoryConfiguration(
      actorId: (() { final guardedValue = map['actorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: pulumi.Input.fromValue(map['arn'] as String),
      messagesCount: (() { final guardedValue = map['messagesCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      retrievalConfig: (() { final guardedValue = map['retrievalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
