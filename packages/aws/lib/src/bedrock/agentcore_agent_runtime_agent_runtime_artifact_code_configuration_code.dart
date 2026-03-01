// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration_code_s3.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode {
  /// Configuration block for the Amazon S3 object that contains the source code for the agent runtime. See `s3` below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3? s3;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode].
  /// [s3] Configuration block for the Amazon S3 object that contains the source code for the agent runtime. See `s3` below.
  AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode({this.s3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3': ?s3 == null ? null : s3!.toMap()};
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode(
      s3: map['s3'] == null
          ? null
          : AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
