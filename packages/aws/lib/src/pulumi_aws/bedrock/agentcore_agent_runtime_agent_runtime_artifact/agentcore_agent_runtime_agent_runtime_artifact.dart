// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_agent_runtime_agent_runtime_artifact_code_configuration/agentcore_agent_runtime_agent_runtime_artifact_code_configuration.dart';
import '../agentcore_agent_runtime_agent_runtime_artifact_container_configuration/agentcore_agent_runtime_agent_runtime_artifact_container_configuration.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifact {
  /// Code configuration block for the agent runtime artifact, including the source code location and execution settings. Exactly one of <span pulumi-lang-nodejs="`codeConfiguration`" pulumi-lang-dotnet="`CodeConfiguration`" pulumi-lang-go="`codeConfiguration`" pulumi-lang-python="`code_configuration`" pulumi-lang-yaml="`codeConfiguration`" pulumi-lang-java="`codeConfiguration`">`code_configuration`</span> or <span pulumi-lang-nodejs="`containerConfiguration`" pulumi-lang-dotnet="`ContainerConfiguration`" pulumi-lang-go="`containerConfiguration`" pulumi-lang-python="`container_configuration`" pulumi-lang-yaml="`containerConfiguration`" pulumi-lang-java="`containerConfiguration`">`container_configuration`</span> must be specified. See <span pulumi-lang-nodejs="`codeConfiguration`" pulumi-lang-dotnet="`CodeConfiguration`" pulumi-lang-go="`codeConfiguration`" pulumi-lang-python="`code_configuration`" pulumi-lang-yaml="`codeConfiguration`" pulumi-lang-java="`codeConfiguration`">`code_configuration`</span> below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration?
      codeConfiguration;

  /// Container configuration block for the agent artifact. Exactly one of <span pulumi-lang-nodejs="`codeConfiguration`" pulumi-lang-dotnet="`CodeConfiguration`" pulumi-lang-go="`codeConfiguration`" pulumi-lang-python="`code_configuration`" pulumi-lang-yaml="`codeConfiguration`" pulumi-lang-java="`codeConfiguration`">`code_configuration`</span> or <span pulumi-lang-nodejs="`containerConfiguration`" pulumi-lang-dotnet="`ContainerConfiguration`" pulumi-lang-go="`containerConfiguration`" pulumi-lang-python="`container_configuration`" pulumi-lang-yaml="`containerConfiguration`" pulumi-lang-java="`containerConfiguration`">`container_configuration`</span> must be specified. See <span pulumi-lang-nodejs="`containerConfiguration`" pulumi-lang-dotnet="`ContainerConfiguration`" pulumi-lang-go="`containerConfiguration`" pulumi-lang-python="`container_configuration`" pulumi-lang-yaml="`containerConfiguration`" pulumi-lang-java="`containerConfiguration`">`container_configuration`</span> below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration?
      containerConfiguration;

  AgentcoreAgentRuntimeAgentRuntimeArtifact({
    this.codeConfiguration,
    this.containerConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeConfigurationValue = codeConfiguration;
    if (codeConfigurationValue != null) {
      map['codeConfiguration'] = codeConfigurationValue.toMap();
    }
    final containerConfigurationValue = containerConfiguration;
    if (containerConfigurationValue != null) {
      map['containerConfiguration'] = containerConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifact(
      codeConfiguration: map['codeConfiguration'] == null
          ? null
          : AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.fromMap(
              (map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerConfiguration: map['containerConfiguration'] == null
          ? null
          : AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration
              .fromMap((map['containerConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
