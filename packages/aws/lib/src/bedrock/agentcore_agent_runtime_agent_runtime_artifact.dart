// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration.dart';
import 'agentcore_agent_runtime_agent_runtime_artifact_container_configuration.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifact {
  /// Code configuration block for the agent runtime artifact, including the source code location and execution settings. Exactly one of `code_configuration` or `container_configuration` must be specified. See `code_configuration` below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration? codeConfiguration;
  /// Container configuration block for the agent artifact. Exactly one of `code_configuration` or `container_configuration` must be specified. See `container_configuration` below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration? containerConfiguration;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifact].
  /// [codeConfiguration] Code configuration block for the agent runtime artifact, including the source code location and execution settings. Exactly one of `code_configuration` or `container_configuration` must be specified. See `code_configuration` below.
  /// [containerConfiguration] Container configuration block for the agent artifact. Exactly one of `code_configuration` or `container_configuration` must be specified. See `container_configuration` below.
  AgentcoreAgentRuntimeAgentRuntimeArtifact({
    this.codeConfiguration,
    this.containerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'containerConfiguration': ?containerConfiguration == null ? null : containerConfiguration!.toMap(),
    };
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifact(
      codeConfiguration: map['codeConfiguration'] == null ? null : AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerConfiguration: map['containerConfiguration'] == null ? null : AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

