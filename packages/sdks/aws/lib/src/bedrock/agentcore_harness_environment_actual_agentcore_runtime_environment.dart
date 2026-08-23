// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_filesystem_configuration.dart';
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_lifecycle_configuration.dart';
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_network_configuration.dart';

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment {
  /// ARN of the agent runtime the service provisions for the harness.
  final pulumi.Input<String> agentRuntimeArn;
  /// ID of the agent runtime the service provisions for the harness.
  final pulumi.Input<String> agentRuntimeId;
  /// Name of the agent runtime the service derives for the harness.
  final pulumi.Input<String> agentRuntimeName;
  /// Filesystem configurations. See `filesystemConfiguration` Block below.
  ///
  /// The following attributes are exported under `agentcoreRuntimeEnvironment`:
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration>> filesystemConfigurations;
  /// Lifecycle configuration. See `lifecycleConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration>> lifecycleConfigurations;
  /// Network configuration. See `networkConfiguration` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration>> networkConfigurations;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment].
  /// [agentRuntimeArn] ARN of the agent runtime the service provisions for the harness.
  /// [agentRuntimeId] ID of the agent runtime the service provisions for the harness.
  /// [agentRuntimeName] Name of the agent runtime the service derives for the harness.
  /// [filesystemConfigurations] Filesystem configurations. See `filesystemConfiguration` Block below.
  /// [lifecycleConfigurations] Lifecycle configuration. See `lifecycleConfiguration` Block below.
  /// [networkConfigurations] Network configuration. See `networkConfiguration` Block below.
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment({
    required this.agentRuntimeArn,
    required this.agentRuntimeId,
    required this.agentRuntimeName,
    required this.filesystemConfigurations,
    required this.lifecycleConfigurations,
    required this.networkConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentRuntimeArn': agentRuntimeArn,
      'agentRuntimeId': agentRuntimeId,
      'agentRuntimeName': agentRuntimeName,
      'filesystemConfigurations': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration>, List<Map<String, dynamic>>>(filesystemConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfigurations': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration>, List<Map<String, dynamic>>>(lifecycleConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkConfigurations': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration>, List<Map<String, dynamic>>>(networkConfigurations, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironment(
      agentRuntimeArn: pulumi.Input.fromValue(map['agentRuntimeArn'] as String),
      agentRuntimeId: pulumi.Input.fromValue(map['agentRuntimeId'] as String),
      agentRuntimeName: pulumi.Input.fromValue(map['agentRuntimeName'] as String),
      filesystemConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration>(map['filesystemConfigurations']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration>(map['lifecycleConfigurations']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      networkConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration>(map['networkConfigurations']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
