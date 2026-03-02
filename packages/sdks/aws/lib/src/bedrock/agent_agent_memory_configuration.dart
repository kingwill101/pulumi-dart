// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_memory_configuration_session_summary_configuration.dart';

class AgentAgentMemoryConfiguration {
  /// The type of memory being stored by the agent. See [AWS API documentation](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_MemoryConfiguration.html) for possible values.
  final pulumi.Input<List<String>> enabledMemoryTypes;
  /// Configuration block for `SESSION_SUMMARY` memory type enabled for the agent. See `session_summary_configuration` Block for details.
  final pulumi.Input<List<AgentAgentMemoryConfigurationSessionSummaryConfiguration>> sessionSummaryConfigurations;
  /// The number of days the agent is configured to retain the conversational context. Minimum value of 0, maximum value of 30.
  final pulumi.Input<int> storageDays;

  /// Creates a new [AgentAgentMemoryConfiguration].
  /// [enabledMemoryTypes] The type of memory being stored by the agent. See [AWS API documentation](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_MemoryConfiguration.html) for possible values.
  /// [sessionSummaryConfigurations] Configuration block for `SESSION_SUMMARY` memory type enabled for the agent. See `session_summary_configuration` Block for details.
  /// [storageDays] The number of days the agent is configured to retain the conversational context. Minimum value of 0, maximum value of 30.
  AgentAgentMemoryConfiguration({
    required this.enabledMemoryTypes,
    required this.sessionSummaryConfigurations,
    required this.storageDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledMemoryTypes': enabledMemoryTypes,
      'sessionSummaryConfigurations': pulumi.Input.mapInputValue<List<AgentAgentMemoryConfigurationSessionSummaryConfiguration>, List<Map<String, dynamic>>>(sessionSummaryConfigurations, (value) => pulumi.Input.encodeList<AgentAgentMemoryConfigurationSessionSummaryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageDays': storageDays,
    };
  }

  factory AgentAgentMemoryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentMemoryConfiguration(
      enabledMemoryTypes: ((map['enabledMemoryTypes'] as List).cast<String>()).input(),
      sessionSummaryConfigurations: (pulumi.Input.decodeList<AgentAgentMemoryConfigurationSessionSummaryConfiguration>(map['sessionSummaryConfigurations']!, (value) => AgentAgentMemoryConfigurationSessionSummaryConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageDays: (map['storageDays'] as int).input(),
    );
  }
}

