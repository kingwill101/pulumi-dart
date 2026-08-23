// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage {
  /// Mount path for the session storage filesystem inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  final pulumi.Input<String> mountPath;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage].
  /// [mountPath] Mount path for the session storage filesystem inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage({
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}
