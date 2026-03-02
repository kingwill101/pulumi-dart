// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration.dart';
import 'agentcore_agent_runtime_agent_runtime_artifact_container_configuration.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifact {
  /// Code configuration block for the agent runtime artifact, including the source code location and execution settings. Exactly one of `code_configuration` or `container_configuration` must be specified. See `code_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration>? codeConfiguration;
  /// Container configuration block for the agent artifact. Exactly one of `code_configuration` or `container_configuration` must be specified. See `container_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration>? containerConfiguration;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifact].
  /// [codeConfiguration] Code configuration block for the agent runtime artifact, including the source code location and execution settings. Exactly one of `code_configuration` or `container_configuration` must be specified. See `code_configuration` below.
  /// [containerConfiguration] Container configuration block for the agent artifact. Exactly one of `code_configuration` or `container_configuration` must be specified. See `container_configuration` below.
  AgentcoreAgentRuntimeAgentRuntimeArtifact({
    this.codeConfiguration,
    this.containerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifact(
      codeConfiguration: map['codeConfiguration'] == null ? null : ((AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.fromMap((map['codeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      containerConfiguration: map['containerConfiguration'] == null ? null : ((AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration.fromMap((map['containerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

