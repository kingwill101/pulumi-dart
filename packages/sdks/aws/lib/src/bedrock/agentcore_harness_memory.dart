// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_memory_agentcore_memory_configuration.dart';
import 'agentcore_harness_memory_managed_memory_configuration.dart';

class AgentcoreHarnessMemory {
  /// AgentCore memory configuration. Use this to connect to an existing AgentCore memory resource. See `agentcoreMemoryConfiguration` Block below.
  final pulumi.Input<AgentcoreHarnessMemoryAgentcoreMemoryConfiguration>? agentcoreMemoryConfiguration;
  /// Explicitly disable memory for this harness. See `disabled` Block below.
  final pulumi.Input<Map<String, dynamic>>? disabled;
  /// Managed memory configuration. Creates and manages a memory resource automatically. See `managedMemoryConfiguration` Block below.
  final pulumi.Input<AgentcoreHarnessMemoryManagedMemoryConfiguration>? managedMemoryConfiguration;

  /// Creates a new [AgentcoreHarnessMemory].
  /// [agentcoreMemoryConfiguration] AgentCore memory configuration. Use this to connect to an existing AgentCore memory resource. See `agentcoreMemoryConfiguration` Block below.
  /// [disabled] Explicitly disable memory for this harness. See `disabled` Block below.
  /// [managedMemoryConfiguration] Managed memory configuration. Creates and manages a memory resource automatically. See `managedMemoryConfiguration` Block below.
  const AgentcoreHarnessMemory({
    this.agentcoreMemoryConfiguration,
    this.disabled,
    this.managedMemoryConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreMemoryConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessMemoryAgentcoreMemoryConfiguration, Map<String, dynamic>>(agentcoreMemoryConfiguration, (value) => value.toMap()),
      'disabled': ?disabled,
      'managedMemoryConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessMemoryManagedMemoryConfiguration, Map<String, dynamic>>(managedMemoryConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessMemory.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemory(
      agentcoreMemoryConfiguration: (() { final guardedValue = map['agentcoreMemoryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessMemoryAgentcoreMemoryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      managedMemoryConfiguration: (() { final guardedValue = map['managedMemoryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessMemoryManagedMemoryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
