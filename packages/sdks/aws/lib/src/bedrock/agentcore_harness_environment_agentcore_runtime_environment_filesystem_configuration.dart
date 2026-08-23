// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_agentcore_runtime_environment_filesystem_configuration_efs_access_point.dart';
import 'agentcore_harness_environment_agentcore_runtime_environment_filesystem_configuration_s3_files_access_point.dart';
import 'agentcore_harness_environment_agentcore_runtime_environment_filesystem_configuration_session_storage.dart';

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration {
  /// Amazon EFS access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `efsAccessPoint` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>>? efsAccessPoints;
  /// Amazon S3 Files access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `s3FilesAccessPoint` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>>? s3FilesAccessPoints;
  /// Session storage filesystem providing persistent storage across agent runtime session invocations. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `sessionStorage` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>>? sessionStorages;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration].
  /// [efsAccessPoints] Amazon EFS access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `efsAccessPoint` Block below.
  /// [s3FilesAccessPoints] Amazon S3 Files access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `s3FilesAccessPoint` Block below.
  /// [sessionStorages] Session storage filesystem providing persistent storage across agent runtime session invocations. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `sessionStorage` Block below.
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration({
    this.efsAccessPoints,
    this.s3FilesAccessPoints,
    this.sessionStorages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsAccessPoints': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>, List<Map<String, dynamic>>>(efsAccessPoints, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3FilesAccessPoints': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>, List<Map<String, dynamic>>>(s3FilesAccessPoints, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionStorages': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>, List<Map<String, dynamic>>>(sessionStorages, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfiguration(
      efsAccessPoints: (() { final guardedValue = map['efsAccessPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      s3FilesAccessPoints: (() { final guardedValue = map['s3FilesAccessPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionStorages: (() { final guardedValue = map['sessionStorages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
