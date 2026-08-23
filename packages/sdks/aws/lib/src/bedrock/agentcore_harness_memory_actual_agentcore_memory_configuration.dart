// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_memory_actual_agentcore_memory_configuration_retrieval_config.dart';

class AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration {
  /// Actor ID for memory sessions.
  final pulumi.Input<String> actorId;
  /// ARN of the AgentCore memory resource.
  final pulumi.Input<String> arn;
  /// Number of messages to retrieve from memory.
  final pulumi.Input<int> messagesCount;
  /// Retrieval configuration parameters. See `retrievalConfig` Block below.
  final pulumi.Input<List<AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig>> retrievalConfigs;

  /// Creates a new [AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration].
  /// [actorId] Actor ID for memory sessions.
  /// [arn] ARN of the AgentCore memory resource.
  /// [messagesCount] Number of messages to retrieve from memory.
  /// [retrievalConfigs] Retrieval configuration parameters. See `retrievalConfig` Block below.
  const AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration({
    required this.actorId,
    required this.arn,
    required this.messagesCount,
    required this.retrievalConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': actorId,
      'arn': arn,
      'messagesCount': messagesCount,
      'retrievalConfigs': pulumi.Input.mapInputValue<List<AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig>, List<Map<String, dynamic>>>(retrievalConfigs, (value) => pulumi.Input.encodeList<AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration(
      actorId: pulumi.Input.fromValue(map['actorId'] as String),
      arn: pulumi.Input.fromValue(map['arn'] as String),
      messagesCount: pulumi.Input.fromValue(map['messagesCount'] as int),
      retrievalConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig>(map['retrievalConfigs']!, (value) => AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
