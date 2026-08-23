// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage {
  /// Mount path for the session storage filesystem inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  final pulumi.Input<String> mountPath;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage].
  /// [mountPath] Mount path for the session storage filesystem inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage({
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}
