// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_memory_actual_agentcore_memory_configuration.dart';
import 'agentcore_harness_memory_actual_managed_memory_configuration.dart';

class AgentcoreHarnessMemoryActual {
  /// AgentCore memory configuration. Use this to connect to an existing AgentCore memory resource. See `agentcoreMemoryConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration>> agentcoreMemoryConfigurations;
  /// Explicitly disable memory for this harness. See `disabled` Block below.
  final pulumi.Input<List<Map<String, dynamic>>> disableds;
  /// Managed memory configuration. Creates and manages a memory resource automatically. See `managedMemoryConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessMemoryActualManagedMemoryConfiguration>> managedMemoryConfigurations;

  /// Creates a new [AgentcoreHarnessMemoryActual].
  /// [agentcoreMemoryConfigurations] AgentCore memory configuration. Use this to connect to an existing AgentCore memory resource. See `agentcoreMemoryConfiguration` Block below.
  /// [disableds] Explicitly disable memory for this harness. See `disabled` Block below.
  /// [managedMemoryConfigurations] Managed memory configuration. Creates and manages a memory resource automatically. See `managedMemoryConfiguration` Block below.
  const AgentcoreHarnessMemoryActual({
    required this.agentcoreMemoryConfigurations,
    required this.disableds,
    required this.managedMemoryConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreMemoryConfigurations': pulumi.Input.mapInputValue<List<AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration>, List<Map<String, dynamic>>>(agentcoreMemoryConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableds': disableds,
      'managedMemoryConfigurations': pulumi.Input.mapInputValue<List<AgentcoreHarnessMemoryActualManagedMemoryConfiguration>, List<Map<String, dynamic>>>(managedMemoryConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessMemoryActualManagedMemoryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessMemoryActual.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryActual(
      agentcoreMemoryConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration>(map['agentcoreMemoryConfigurations']!, (value) => AgentcoreHarnessMemoryActualAgentcoreMemoryConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      disableds: pulumi.Input.fromValue((map['disableds'] as List).cast<Map<String, dynamic>>()),
      managedMemoryConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessMemoryActualManagedMemoryConfiguration>(map['managedMemoryConfigurations']!, (value) => AgentcoreHarnessMemoryActualManagedMemoryConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
