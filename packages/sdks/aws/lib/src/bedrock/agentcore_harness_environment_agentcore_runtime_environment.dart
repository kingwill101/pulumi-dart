// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_agentcore_runtime_environment_filesystem_configuration.dart';
import 'agentcore_harness_environment_agentcore_runtime_environment_lifecycle_configuration.dart';
import 'agentcore_harness_environment_agentcore_runtime_environment_network_configuration.dart';

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment {
  /// ARN of the agent runtime the service provisions for the harness.
  final pulumi.Input<String?>? agentRuntimeArn;
  /// ID of the agent runtime the service provisions for the harness.
  final pulumi.Input<String?>? agentRuntimeId;
  /// Name of the agent runtime the service derives for the harness.
  final pulumi.Input<String?>? agentRuntimeName;
  /// Filesystem configurations. See `filesystemConfiguration` Block below.
  ///
  /// The following attributes are exported under `agentcoreRuntimeEnvironment`:
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration>?>? filesystemConfigurations;
  /// Lifecycle configuration. See `lifecycleConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentLifecycleConfiguration>?>? lifecycleConfigurations;
  /// Network configuration. See `networkConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration>?>? networkConfigurations;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment].
  /// [agentRuntimeArn] ARN of the agent runtime the service provisions for the harness.
  /// [agentRuntimeId] ID of the agent runtime the service provisions for the harness.
  /// [agentRuntimeName] Name of the agent runtime the service derives for the harness.
  /// [filesystemConfigurations] Filesystem configurations. See `filesystemConfiguration` Block below.
  /// [lifecycleConfigurations] Lifecycle configuration. See `lifecycleConfiguration` Block below.
  /// [networkConfigurations] Network configuration. See `networkConfiguration` Block below.
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment({
    this.agentRuntimeArn,
    this.agentRuntimeId,
    this.agentRuntimeName,
    this.filesystemConfigurations,
    this.lifecycleConfigurations,
    this.networkConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentRuntimeArn': ?agentRuntimeArn,
      'agentRuntimeId': ?agentRuntimeId,
      'agentRuntimeName': ?agentRuntimeName,
      'filesystemConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration>, List<Map<String, dynamic>>>(filesystemConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentLifecycleConfiguration>, List<Map<String, dynamic>>>(lifecycleConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentLifecycleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration>, List<Map<String, dynamic>>>(networkConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironment(
      agentRuntimeArn: (() { final guardedValue = map['agentRuntimeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeId: (() { final guardedValue = map['agentRuntimeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeName: (() { final guardedValue = map['agentRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesystemConfigurations: (() { final guardedValue = map['filesystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleConfigurations: (() { final guardedValue = map['lifecycleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentLifecycleConfiguration>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkConfigurations: (() { final guardedValue = map['networkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
