// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration_code.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration {
  /// Configuration block for the source code location and configuration details. See `code` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode>? code;
  /// Array specifying the entry point for code execution, indicating the function or method to invoke when the code runs. The array must contain 1 or 2 elements. Examples: `["main.py"]`, `["opentelemetry-instrument", "main.py"]`.
  final pulumi.Input<List<String>> entryPoints;
  /// Runtime environment used to execute the code. Valid values: `PYTHON_3_10`, `PYTHON_3_11`, `PYTHON_3_12`, `PYTHON_3_13`.
  final pulumi.Input<String> runtime;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration].
  /// [code] Configuration block for the source code location and configuration details. See `code` below.
  /// [entryPoints] Array specifying the entry point for code execution, indicating the function or method to invoke when the code runs. The array must contain 1 or 2 elements. Examples: `["main.py"]`, `["opentelemetry-instrument", "main.py"]`.
  /// [runtime] Runtime environment used to execute the code. Valid values: `PYTHON_3_10`, `PYTHON_3_11`, `PYTHON_3_12`, `PYTHON_3_13`.
  const AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration({
    this.code,
    required this.entryPoints,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'entryPoints': entryPoints,
      'runtime': runtime,
    };
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entryPoints: pulumi.Input.fromValue((map['entryPoints'] as List).cast<String>()),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
    );
  }
}
