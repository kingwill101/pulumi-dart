// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_agent_runtime_agent_runtime_artifact_code_configuration_code.dart';

class AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration {
  /// Configuration block for the source code location and configuration details. See `code` below.
  final AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode? code;

  /// Array specifying the entry point for code execution, indicating the function or method to invoke when the code runs. The array must contain 1 or 2 elements. Examples: `["main.py"]`, `["opentelemetry-instrument", "main.py"]`.
  final List<String> entryPoints;

  /// Runtime environment used to execute the code. Valid values: `PYTHON_3_10`, `PYTHON_3_11`, `PYTHON_3_12`, `PYTHON_3_13`.
  final String runtime;

  /// Creates a new [AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration].
  /// [code] Configuration block for the source code location and configuration details. See `code` below.
  /// [entryPoints] Array specifying the entry point for code execution, indicating the function or method to invoke when the code runs. The array must contain 1 or 2 elements. Examples: `["main.py"]`, `["opentelemetry-instrument", "main.py"]`.
  /// [runtime] Runtime environment used to execute the code. Valid values: `PYTHON_3_10`, `PYTHON_3_11`, `PYTHON_3_12`, `PYTHON_3_13`.
  AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration({
    this.code,
    required this.entryPoints,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue.toMap();
    }
    map['entryPoints'] = entryPoints;
    map['runtime'] = runtime;
    return map;
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration(
      code: map['code'] == null
          ? null
          : AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCode
              .fromMap((map['code'] as Map).cast<String, dynamic>()),
      entryPoints: (map['entryPoints'] as List).cast<String>(),
      runtime: map['runtime'] as String,
    );
  }
}
