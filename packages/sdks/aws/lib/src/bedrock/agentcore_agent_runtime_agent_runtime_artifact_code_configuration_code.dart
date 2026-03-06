// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration_code_s3.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode {
  /// Configuration block for the Amazon S3 object that contains the source code for the agent runtime. See `s3` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3>? s3;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode].
  /// [s3] Configuration block for the Amazon S3 object that contains the source code for the agent runtime. See `s3` below.
  const AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode(
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

