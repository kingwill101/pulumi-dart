// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint {
  /// ARN of the Amazon S3 Files access point to mount into the agent runtime.
  final pulumi.Input<String> accessPointArn;
  /// Mount path for the S3 Files access point inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  final pulumi.Input<String> mountPath;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint].
  /// [accessPointArn] ARN of the Amazon S3 Files access point to mount into the agent runtime.
  /// [mountPath] Mount path for the S3 Files access point inside the agent runtime. Must be under `/mnt` with exactly one subdirectory level (for example, `/mnt/data`).
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint({
    required this.accessPointArn,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': accessPointArn,
      'mountPath': mountPath,
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint(
      accessPointArn: pulumi.Input.fromValue(map['accessPointArn'] as String),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}
